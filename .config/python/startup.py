def usehistfile():
    import atexit
    from os import getenv
    from pathlib import Path
    import readline

    history = getenv("PYTHONHISTFILE")
    if not history:
        return

    path = Path(history)
    if not path.is_file():
        if not path.parent.is_dir():
            return
        path.write_bytes(b"import this\n")

    try:
        readline.read_history_file(history)
    except OSError:
        pass
    else:
        atexit.register(readline.write_history_file, history)


if __name__ == "__main__":
    usehistfile()
    del usehistfile
