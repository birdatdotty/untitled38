import Block 1.0
import Div 1.0
import Nav 1.0
import A 1.0
import Button 1.0
import El 1.0
import Label 1.0
import Img 1.0

import "bootstrap"
Block {
//    tab: -2
    Block {text: "<!DOCTYPE html>"}
    El{
        tab: 0
        typeName: "html"
        HEADCommon {title: "Index"}

        El{
            typeName: "body"
            BootJumbotron {
                property var s: Qt.createComponent('P{text: "ddd"}')
                h1: "Привет, мир!"
                p: "Тут будет что-то))" // + s.createObject(test, {text: "ddd"})

                anyBlock:
                BootModal {
                    buttonStr: "О";
                    header: "HeDeR!"
                    body: Label{text:"Проверка прошла успешно!"}
                }
            }
            Menu{page: "index"}
            BootBreadcrumb { data: [
                        {"name":"HH", "url" : "/index.html"},
                        {"name":"AbOuT", "url" : "/about/index.html"}]
            }
            Div {
                className: "col-lg-8 offset-lg-2"

                BootAlert
                {
                    message: "Test Al"
                    block: BootBadge{ message: "badge-warning"; type: "warning" }
                }
                BootAlert{ message: "Test Al"; }
                BootAlert{ message: "Test Al"; type: "secondary"}
                BootBadge{ message: "badge-warning"; type: "warning" }
        //        BootCarousel {data: ["/imgs/s1200.jpg", "/imgs/s1200-1.jpg", "/imgs/s1200-2.jpg"]; id_name: "sss"}

                BootModal {
                    buttonStr: "Проверка модального окна";
                    header: "HeDeR!"
                    body: Label{text:"Проверка прошла успешно"}
                }
                Button {
                    text: "HTML Button"
                }
                Label{
                    text: "HTML Label"
                    idName: "ihoiuoi"
                    argFor: "fdsf"
                }
                BootJumbotron {

                }
                A {href: "ttt"; text: "222"; className: "2hhhhhasd"}
                Label {text: "222"; className: "2hhhhhasd"}
                BootScrollspy{list: ["Main", "second"];
                              listTitle: {"Main": "Главная страница", "second": "Вторая страница"}
                              data:   {"Main": "index.html Главная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страница", "second": "sss.htmlГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страницаГлавная страница"}}
                Img {idName: "IMG"
                    src: "https://avatars.mds.yandex.net/get-banana/37571/x25BDfZsZBey9eJh_RiYyQpE__banana_20161021_246-Numbers-380-iconx402x.png/optimize"}
            }
        }
    }
}
