import Block 1.0
import Div 1.0
import Nav 1.0
import A 1.0
import Button 1.0
import El 1.0
import Label 1.0
import P 1.0
import Img 1.0

import "bootstrap"

Block {
    Block {text: "<!DOCTYPE html>"}
    El{
        typeName: "html"
        HEADCommon {title: "test"}
        El{
            typeName: "body"
            id: test
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
            Menu {
                page: "test"
            }
            Div {
                className: "col-lg-8 offset-lg-2"

                Img{
                    idName: "IMG";
                    className: "Left"
                    ariaLabel: "assadasd";
                    src: "https://avatars.mds.yandex.net/get-banana/37571/x25BDfZsZBey9eJh_RiYyQpE__banana_20161021_246-Numbers-380-iconx402x.png/optimize"
                }
                Img {ariaLabel: "assadasd"; text: "ariaLabel"; }
                Ps {
                    text: site.fish(5);
                }
                El {
                    typeName: "script"
                    text: "window.menu = $('#navbarNav');"
                }
            }
        }
    }
}
