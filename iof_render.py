# -*- coding: utf-8 -*-
import types
from typing import Union, Optional

from owlready2 .disjoint import AllDisjoint
from owlready2.class_construct import LogicalClassConstruct, Or, And, Not, Inverse, \
    Construct, Restriction, OneOf, ConstrainedDatatype, PropertyChain
from owlready2.entity import EntityClass, ThingClass
from owlready2.annotation import AnnotationPropertyClass
from owlready2.prop import PropertyClass, ObjectPropertyClass, DataPropertyClass, ReasoningPropertyClass, \
    SymmetricProperty, AsymmetricProperty, TransitiveProperty, FunctionalProperty, ReflexiveProperty, \
    IrreflexiveProperty
from owlready2.namespace import owl, Ontology
import owlready2.base
import re
import treelib as tl
from ontologies import Example, Core

_DL_SYNTAX = types.SimpleNamespace(
    SUBCLASS="⊑",
    EQUIVALENT_TO="↔",
    NOT="¬",
    DISJOINT_WITH="⊑" + " " + "¬",
    EXISTS="∃",
    FORALL="∀",
    IN="∈",
    MIN="≥",
    EQUAL="=",
    NOT_EQUAL="≠",
    MAX="≤",
    INVERSE="⁻",
    AND="⊓",
    TOP="⊤",
    BOTTOM="⊥",
    OR="⊔",
    COMP="∘",
    WEDGE="⋀",
    CONDITIONAL="⊑",
    IMPLIES="←",
    COMMA=",",
    SELF="self",
)

_FACETS = {
    "length": "length",
    "min_length": "minLength",
    "max_length": "maxLength",
    "pattern": "pattern",
    "max_inclusive": "\u2264",
    "max_exclusive": "\u003c",
    "min_inclusive": "\u2265",
    "min_exclusive": "\u003e",
    "total_digits": "totalDigits",
    "fraction_digits": "fractionDigits",
}

Namespaces = {
    "http://purl.obolibrary.org/obo/": "bfo",
    "https://spec.industrialontologies.org/ontology/core/Core/": "core",
    "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/": "av",
    "https://www.omg.org/spec/Commons/Designators/": "des",
    "https://spec.industrialontologies.org/ontology/qualities/Qualities/": "qual",
    "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/": "qp",
    "http://example.org/ontology/": "ex",
    "http://example.org/data/": "data",
    "http://qudt.org/vocab/unit/": "unit"
}

def _render_short_name(concept) -> str:
    ns = Namespaces.get(concept.namespace.base_iri, '_')
    name = concept.name
    if re.match(r'[A-Z]+_[0-9]+', name):
        name = re.sub(r"[ ]", "_", str(concept.label.first()))
    return f"{ns}:{name}"

def dl_render_terminology(onto: Ontology, show_disjoint: bool = True, show_domain: bool = True, show_range: bool = True, show_inverse: bool = True, show_characteristics: bool = False) -> dict:
    s = dict()
    if onto.annotation_properties() and (props := list(onto.annotation_properties())):
        s['Annotation properties'] = { prop.name : dl_render_prop(prop)
            for prop in props }
        
    if onto.data_properties() and (props := list(onto.data_properties())):
        s['Data properties'] = { prop.name : 
            dl_render_prop(prop, show_domain=show_domain, show_range=show_range, show_inverse=show_inverse, show_characteristics=show_characteristics)
                for prop in props }
        
    if onto.object_properties() and (props := list(onto.object_properties())):
        s['Object properties'] = { prop.name : 
            dl_render_prop(prop, show_domain=show_domain, show_range=show_range, show_inverse=show_inverse, show_characteristics=show_characteristics)
                for prop in props }

    if onto.classes() and (classes := list(onto.classes())):
        tree = tl.Tree()
        for klass in classes:
            dl_render_class(klass, show_disjoint=show_disjoint, tree = tree)
        s['Classes'] = tree            
    return s


def dl_render_class(klass: ThingClass, show_disjoint: bool = True, tree: tl.Tree = None) -> list:
    def add_class(klass, tree, data = None):
        if str(klass) in tree: return
        
        parent = klass.__base__
        if str(parent) not in tree:
            if parent == owl.Thing:
                tree.create_node(_render_name(parent), str(parent))
            else:
                dl_render_class(parent, show_disjoint=show_disjoint, tree=tree)
            
        tree.create_node(_render_name(klass), str(klass), parent = str(parent), data={ 'axioms': data, 'class': klass })
    
    s = []
    parent = None
    if klass.equivalent_to:
        s.extend(
            [("%s %s %s" % (dl_render_concept_str(klass), _DL_SYNTAX.EQUIVALENT_TO, dl_render_concept_str(_))) for _ in
             klass.equivalent_to])
    if klass.is_a:
        s.extend([("%s %s %s" % (dl_render_concept_str(klass), _DL_SYNTAX.SUBCLASS, dl_render_concept_str(_))) for _ in
                  klass.is_a])
    
    # Pick up general class axioms
    axioms = [_[0] for _ in klass.namespace.world.sparql("SELECT * { ?x rdfs:subClassOf ?? }", [klass]) if not isinstance(_[0], ThingClass) ]
    if axioms:
        s.extend([("%s %s %s" % (dl_render_concept_str(_), _DL_SYNTAX.CONDITIONAL, dl_render_concept_str(klass))) for _ in axioms])
    
    if not s:
        s.append("%s %s %s" % (dl_render_concept_str(klass), _DL_SYNTAX.SUBCLASS, _DL_SYNTAX.TOP))
    if show_disjoint:
        for disjoint in klass.disjoints():
            s.extend(dl_render_disjoint(disjoint, klass))

    if tree is not None: add_class(klass, tree, s)

    return s

def dl_render_prop(prop: PropertyClass, show_domain: bool = True, show_range: bool = True, show_inverse: bool = True, show_characteristics: bool = False) -> list:
    s = []
    if prop.is_a:
        s.extend([("%s %s %s" % (dl_render_concept_str(prop), _DL_SYNTAX.SUBCLASS, dl_render_concept_str(_))) for _ in
              prop.is_a if _.namespace is not owl])
    if prop.domain and show_domain:
        s.extend([("domain: %s" % (dl_render_concept_str(_))) for _ in prop.domain])
    if prop.range and show_range:
        s.extend([("range: %s" % (dl_render_concept_str(_))) for _ in prop.range])
    if prop.inverse_property and show_inverse:
        s.append("inverse: %s" % (dl_render_concept_str(prop.inverse_property)))
    if show_characteristics:
        if SymmetricProperty in prop.is_a:
            s.append('Symmetric')
        if AsymmetricProperty in prop.is_a:
            s.append('Asymmetric')
        if TransitiveProperty in prop.is_a:
            s.append('Transitive')
        if FunctionalProperty in prop.is_a:
            s.append('Functional')
        if ReflexiveProperty in prop.is_a:
            s.append('Reflexive')
        if IrreflexiveProperty in prop.is_a:
            s.append('Irreflexive')

    return s

def dl_render_disjoint(disjoint: AllDisjoint, klass: Optional[ThingClass] = None) -> list:
    if klass is None:
        return [dl_render_disjoint(disjoint, _) for _ in disjoint.entities]
    if klass in disjoint.entities:
        return ["%s %s %s" % (dl_render_concept_str(And([klass, _])), _DL_SYNTAX.SUBCLASS, _DL_SYNTAX.BOTTOM)
                         for _ in disjoint.entities if _ is not klass]

def _render_name(concept) -> str:
    formatted = _render_short_name(concept)
    if concept.iri.startswith('http://example.org') and concept.iri.split('/')[3] != 'ontology':
        formatted = f"<a href='{concept.iri.split('/')[3]}.html#{concept.name}'>{formatted}</a>"        
    elif concept.namespace == Example:
        formatted = f"<a href='Example.html#{concept.name}'>{formatted}</a>"
    elif concept.namespace.name == 'Core':
        formatted = f"<a href='{concept.iri}'>{formatted}</a>"        
    return formatted 
    

def dl_render_concept_str(concept: Union[Construct, EntityClass]) -> str:
    this = dl_render_concept_str
    if concept is None:
        return _DL_SYNTAX.BOTTOM
    if isinstance(concept, ThingClass):
        if concept is owl.Thing:
            return _DL_SYNTAX.TOP
        if concept is owl.Nothing:
            return _DL_SYNTAX.BOTTOM
        return _render_name(concept)
    if isinstance(concept, PropertyClass):
        return _render_name(concept)
    if isinstance(concept, LogicalClassConstruct):
        s = []
        for x in concept.Classes:
            if isinstance(x, LogicalClassConstruct):
                s.append("(" + this(x) + ")")
            else:
                s.append(this(x))
        if isinstance(concept, Or):
            return (" %s " % _DL_SYNTAX.OR).join(s)
        if isinstance(concept, And):
            return (" %s " % _DL_SYNTAX.AND).join(s)
    if isinstance(concept, Not):
        return "%s %s" % (_DL_SYNTAX.NOT, this(concept.Class))
    if isinstance(concept, Inverse):
        return "%s%s" % (this(concept.property), _DL_SYNTAX.INVERSE)
    if isinstance(concept, Restriction):
        # type map
        # SOME:
        # ONLY:
        # VALUE:
        # HAS_SELF:
        # EXACTLY:
        # MIN:
        # MAX:
        if concept.type == owlready2.base.SOME:
            return "%s (%s .%s)" % (_DL_SYNTAX.EXISTS, this(concept.property), this(concept.value))
        if concept.type == owlready2.base.ONLY:
            return "%s (%s .%s)" % (_DL_SYNTAX.FORALL, this(concept.property), this(concept.value))
        if concept.type == owlready2.base.VALUE:
            return "%s %s .{%s}" % (_DL_SYNTAX.EXISTS, this(concept.property), concept.value.name if isinstance(concept.value, owl.Thing) else concept.value)
        if concept.type == owlready2.base.HAS_SELF:
            return "%s (%s .%s)" % (_DL_SYNTAX.EXISTS, this(concept.property), _DL_SYNTAX.SELF)
        if concept.type == owlready2.base.EXACTLY:
            return "%s %s %s .%s" % (_DL_SYNTAX.EQUAL, concept.cardinality, this(concept.property), this(concept.value))
        if concept.type == owlready2.base.MIN:
            return "%s %s %s .%s" % (_DL_SYNTAX.MIN, concept.cardinality, this(concept.property), this(concept.value))
        if concept.type == owlready2.base.MAX:
            return "%s %s %s .%s" % (_DL_SYNTAX.MAX, concept.cardinality, this(concept.property), this(concept.value))
    if isinstance(concept, OneOf):
        return "{%s}" % (" %s " % _DL_SYNTAX.OR).join("%s" % (_.name if isinstance(_, owl.Thing) else _) for _ in concept.instances)
    if isinstance(concept, ConstrainedDatatype):
        s = []
        for k in _FACETS:
            v = getattr(concept, k, None)
            if not v is None:
                s.append("%s %s" % (_FACETS[k], v))
        return "%s[%s]" % (concept.base_datatype.__name__, (" %s " % _DL_SYNTAX.COMMA).join(s))
    if isinstance(concept, PropertyChain):
        return (" %s " % _DL_SYNTAX.COMP).join(this(_) for _ in concept.properties)
    if concept in owlready2.base._universal_datatype_2_abbrev:
        iri = owlready2.base._universal_abbrev_2_iri.get(owlready2.base._universal_datatype_2_abbrev.get(concept))
        if iri.startswith("http://www.w3.org/2001/XMLSchema#"):
            return "xsd:" + iri[33:]
        hash, slash = iri.rindex('#'), iri.rindex('/')
        return iri[max(hash, slash)+1:]
    if owlready2.rdfs_datatype in [_.storid for _ in concept.is_a]: # rdfs:Datatype
        return concept.name
    raise NotImplemented
