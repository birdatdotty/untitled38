import Block 1.0
import El 1.0
import Title 1.0
import Style 1.0


import "bootstrap"


El {
    typeName: "head"
    property string title: ""

    Block { text: "<meta charset='utf-8'>" }
    Title { text: title; tab: 0 }
//    Block { text: '<link rel="stylesheet" type="text/css" href="' + site.getStyleFile() + '">'}
    Block { text: site.getHtmlStyle() }
    BootstrapHead{}

//    Style { text: '#list-example-scroll{height: 200;overflow-y: scroll;}' }
    El {
        tab: 0
        typeName: "style"
        text: '#list-example-scroll{height: 300px;overflow-y: scroll;}'
    }

}
