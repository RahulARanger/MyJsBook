# Table of Contents <!-- omit in toc -->

- [Introduction](#introduction)
  - [QML Syntax Basics](#qml-syntax-basics)
    - [Importing QML files](#importing-qml-files)
    - [Importing JavaScript files](#importing-javascript-files)
    - [Object Terminology](#object-terminology)

# Introduction

QML is a language that allows us to implement Qt Quick.

QML also has a API which allows us to use it in python and C++.

-   [Difference Between Qt Quick and QML](https://stackoverflow.com/questions/19696153/difference-between-qt-qml-and-qt-quick)
-   [Reference](https://doc.qt.io/qt-5/qtquick-index.html)

## [QML Syntax Basics](https://doc.qt.io/qt-5/qtqml-syntax-basics.html)

### Importing QML files

```qml
import  QtQuick 2.15
import QtQuick.Window 2.15
import x // imports x.qml auto imported tho

import "x.qml" // same as above
import "../sample.qml" // qml in another directory

import "src/sample2.qml"
import "src" // imports the directory src in the current directory
// so we can directly import qml files in src directory

import sample2 // now

```

### Importing JavaScript files

```qml
import "sample.js" as sample // if in current directory
```

### Object Terminology

```qml

import QtQuick 2.15

Rectangle{ // parent
    color: "orange" // property

    MouseArea{ // child at depth 1
        anchors.fill: parent // referring parent
    }


/*

    This is how we create a simple Rectangle in qml

*/
}
```
