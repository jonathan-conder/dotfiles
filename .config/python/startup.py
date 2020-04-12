import os
import readline
import atexit

def __register_custom_history__():
    history = os.environ.get('PYTHONHISTFILE')
    if history and os.path.isfile(history):
        try:
            readline.read_history_file(history)
        except OSError:
            pass

        def write_history():
            try:
                readline.write_history_file(history)
            except (FileNotFoundError, PermissionError):
                pass

        atexit.register(write_history)

__register_custom_history__()
