# This Python file uses the following encoding: utf-8
import os
from pathlib import Path
import sys

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2 import QtCore


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    # we need QML engine for parsing qml files

    app.setAttribute(QtCore.Qt.AA_EnableHighDpiScaling)
    engine.load(os.fspath(Path(__file__).resolve().parent / "hello.qml"))

    print(engine.rootObjects())  # this would be [] if the qml file is invalid
    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec_())
