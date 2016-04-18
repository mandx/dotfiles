"""
Configuration example for ``ptpython``.

Copy this file to ~/.ptpython/config.py
"""

from ptpython.layout import CompletionVisualisation

__all__ = (
    'configure',
)

def configure(repl):
    """
    Configuration method. This is called during the start-up of ptpython.

    :param repl: `PythonRepl` instance.
    """
    repl.use_code_colorscheme('vim')
    repl.completion_visualisation = CompletionVisualisation.MULTI_COLUMN
    repl.highlight_matching_parenthesis = True
    repl.show_signature = True
    repl.show_docstring = True

