import Nav 1.0
import A 1.0
import Block 1.0

import "bootstrap"

BootMenu{
    property var page: ""

    activePage: page
    idName: "menu"
    list: ["index", "about", "test"]
    listTitle: {"index": "Главная страница", "about": "Обо мне1", "test": "test"}
    listUrl:   {"index": "/index.html", "about": "/about.html", "test": "/test.html"}
}
