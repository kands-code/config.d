import atexit
import os
import site
import sys

# get history file path
if sys.platform == "win32":
    _base = os.environ.get("LOCALAPPDATA") or os.path.expanduser("~")
    HISTFILE = os.path.join(_base, "python", "python_history")
else:
    HISTFILE = os.path.expanduser("~/.local/state/python_history")
# create folder if not exist
os.makedirs(os.path.dirname(HISTFILE), exist_ok=True)
# check atrribute for different version
if hasattr(site, "gethistoryfile"):
    os.environ.setdefault("PYTHON_HISTORY", HISTFILE)
else:
    try:
        import readline
    except ImportError:
        pass
    else:
        try:
            readline.read_history_file(HISTFILE)
        except (FileNotFoundError, OSError):
            pass
        _write_history = readline.write_history_file
        # ty: ignore[invalid-assignment]
        readline.write_history_file = lambda *_a, **_k: _write_history(HISTFILE)
        atexit.register(lambda: _write_history(HISTFILE))
