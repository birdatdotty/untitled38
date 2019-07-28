import QtQuick 2.0
import El 1.0
import Block 1.0

//<div class="alert alert-primary" role="alert">
//  A simple primary alert—check it out!
//</div>
El {
//    property string type: "primary"
//    property string message
//    property Block block: Block {}
    function inner(arr,idName)
    {
//        <div class="carousel-item">
//          <img src="..." class="d-block w-100" alt="...">
//        </div>
        var ret = "<div class='carousel-item active'>" +
                    "<img src='" + arr[0] + "' class='d-block w-100' alt=''>" +
                    "</div>";
        for (var i = 1; i < arr.length; i++)
        {
            console.log("i:" + i)
            console.log(arr[i])
            ret += "<div class='carousel-item'>" +
                   "<img src='" + arr[i] + "' class='d-block w-100' alt=''>" +
                   "</div>";
        }

        var prev = "<a class='carousel-control-prev' href='#" + idName + "' role='button' data-slide='prev'>" +
                     "<span class='carousel-control-prev-icon' aria-hidden='true'></span>" +
                     "<span class='sr-only'>Previous</span>" +
                   "</a>";
        var next = "<a class='carousel-control-next' href='#" + idName + "' role='button' data-slide='next'>" +
                     "<span class='carousel-control-next-icon' aria-hidden='true'></span>" +
                     "<span class='sr-only'>Next</span>" +
                   "</a>";

        ret += prev
        ret += next

//        var qwe = Block("safsa")
//        console.log (qwe.out());

//        var newObject = Qt.createQmlObject('import Block 1.0; Block {text: "111111111111111122222222222333333333333333"}',
//                                           carusel,
//                                           "dynamicSnippet1");

//        var newObject = Qt.createQmlObject('import Block 1.0; Block {text: "111111111111111122222222222333333333333333"}',
//                                           carusel);

        var newObject = Qt.createQmlObject('Menu{}',
                                           carusel);

//        component = Qt.createComponent("BootAlert.qml");
//        sprite = component.createObject(appWindow, {"x": 100, "y": 100});

        if (newObject == null) {
            // Error Handling
            console.log("Error creating object");
        }
        else
        {
            console.log ("newObject.out():");
            console.log (newObject.out());
            console.log ("----------------");
        }

        console.log(ret)
        console.log(i.length)
        return ret;
    }

    property var data: ["/imgs/s1200.webp", "/imgs/s1200-1.webp", "/imgs/s1200-2.webp"]
    property string id_name: "carouselExampleControls"

    typeName: "div"
    className: "carousel slide"
    dataRide: "carousel"
    idName: id_name

    El {
        id: carusel
        typeName: "div"
        className: "carousel-inner"
        text: inner(data, id_name)
    }
}
//BootBreadcrumb
