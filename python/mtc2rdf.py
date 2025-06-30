import sys
import requests
from ontologies import BFO, Core, AnnVocab, Des, Qual, QualPhysical, Example, Data
from mtconnect_to_iof import MTConnectToIOF

Example.load(only_local=True)

if len(sys.argv) < 2:
    print("Usage: python script.py <https_url>")
    sys.exit(1)

url = sys.argv[1]

print("Gettig MTConnect XML from:", url)
response = requests.get(url)
response.raise_for_status()  # Raises an error for bad responses

print("Converting MTConnect XML to IOF OWL format...")
trans = MTConnectToIOF(response.text)
trans.convert()
trans.write()
