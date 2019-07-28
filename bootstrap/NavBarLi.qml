import QtQuick 2.0
import El 1.0
import A 1.0

El {
    id: main

    property alias li:el.text
    property alias url:el.href

    typeName: "li"
    className: "nav-item"
    A {
        id: el
        className: "nav-link"
        href: "#"
        text: "---"
    }
}
