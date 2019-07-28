import QtQuick 2.0
import El 1.0

//<nav aria-label="breadcrumb">
//  <ol class="breadcrumb">
//    <li class="breadcrumb-item"><a href="#">Home</a></li>
//    <li class="breadcrumb-item"><a href="#">Library</a></li>
//    <li class="breadcrumb-item active" aria-current="page">Data</li>
//  </ol>
//</nav>

El {
    property string type: "primary"
    property string message
    property var data: []
    function genLi(address) {
        var ret = "";
        var len = address.length;
        for (var i = 0; i < len - 1; i++)
        {
            var element = address[i]
            ret += "<li class='breadcrumb-item'><a href='" + element["url"] + "'>" + element["name"] + "</a></li>"
        };
        ret += "<li class='breadcrumb-item active'  aria-current='page'>" + address[len - 1]["name"] + "</li>"

        return ret
    }



    typeName: "nav"
    ariaLabel: "breadcrumb"
    El {
        typeName: "ol"
        className: "breadcrumb"
        text: genLi(data)
    }
}
