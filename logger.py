from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging

setup_logging(level = logging.DEBUG, indent_spaces=2, include_func=True, no_datetime=True)
