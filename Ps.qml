import Block 1.0
import P 1.0

Block {
    id: main
    property string text

    function mkList(text)
    {
        var list = text.split("\n")
        var arr = Qt.createQmlObject("import Div 1.0;Div{}", main);
        for (var i = 0; i < list.length; i++)
        {
            if (list[i].length > 0)
            {
                var a = Qt.createQmlObject("import P 1.0;P{}", arr);
                a.setText(list[i]);
                arr.appendBlock(a)
            }
        }
//        var a2 = Qt.createQmlObject("import P 1.0;P{}", arr);
//        a2.setText(list[1]);
//        arr.appendBlock(a1)
//        arr.appendBlock(a2)
        return arr
    }

    blocksList: mkList(text)

}
