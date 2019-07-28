import QtQuick 2.0
import El 1.0
import Block 1.0
import Div 1.0
import A 1.0
import P 1.0
import H4 1.0

//<div id="list-example" class="list-group">
//  <a class="list-group-item list-group-item-action" href="#list-item-1">Item 1</a>
//  <a class="list-group-item list-group-item-action" href="#list-item-2">Item 2</a>
//  <a class="list-group-item list-group-item-action" href="#list-item-3">Item 3</a>
//  <a class="list-group-item list-group-item-action" href="#list-item-4">Item 4</a>
//</div>
//<div data-spy="scroll" data-target="#list-example" data-offset="0" class="scrollspy-example">
//  <h4 id="list-item-1">Item 1</h4>
//  <p>...</p>
//  <h4 id="list-item-2">Item 2</h4>
//  <p>...</p>
//  <h4 id="list-item-3">Item 3</h4>
//  <p>...</p>
//  <h4 id="list-item-4">Item 4</h4>
//  <p>...</p>
//</div>
Block {
  property string idStr: "list-example"
  property var data
  property var list
  property var listTitle
    function d1(list,data)
    {
        if (list === undefined)
            return;
        var block = Qt.createQmlObject('import Block 1.0;Block{}', c1)

        console.log( JSON.stringify(data))
        console.log( JSON.stringify(list))
        for (var i = 0; i < list.length; i++)
          {
            var key = list[i]
            var value = data[key]
            var a = Qt.createQmlObject('import A 1.0;A{className: "list-group-item list-group-item-action active"}', block)
            a.setHref("#"+key)
            a.setText(value)
            block.appendBlock(a)
            console.log (">>> " + list[i] + ": " + data[list[i]])
          }
        return block.out();
    }
    function d2(list,data,values)
    {
        var block = Qt.createQmlObject('import Block 1.0;Block{}', c2)

        for (var i = 0; i < list.length; i++)
          {
            var key = list[i]
            var value = data[key]
//            H4 {idName: idStr + "list-item-2"; text: "Item 2" }
//            P { text: "Ex consequat commodo adipisicing exercitation aute excepteur occaecat ullamco duis aliqua id magna ullamco eu. Do aute ipsum ipsum ullamco cillum consectetur ut et aute consectetur labore. Fugiat laborum incididunt tempor eu consequat enim dolore proident. Qui laborum do non excepteur nulla magna eiusmod consectetur in. Aliqua et aliqua officia quis et incididunt voluptate non anim reprehenderit adipisicing dolore ut consequat deserunt mollit dolore. Aliquip nulla enim veniam non fugiat id cupidatat nulla elit cupidatat commodo velit ut eiusmod cupidatat elit dolore." }

            var h4 = Qt.createQmlObject('import H4 1.0;H4{}', block)
            h4.setId(key)
            h4.setText(value)
            block.appendBlock(h4)

            var p = Qt.createQmlObject('import P 1.0;P{}', block)
            p.setText(values[key])
            block.appendBlock(p)

            console.log (">>> " + list[i] + ": " + data[list[i]])
          }
        return block.out();
    }


  Div {
    className: "col-12"
    Div {
      className: "row"
      Div {
        className: "col-4"
        Div {
            id: c1
          idName: idStr
          className: "list-group"
          A {
            className: "list-group-item list-group-item-action"
            href: "#" + idStr + "list-item-1"
            text: "Item 1"
          }
          A {
            className: "list-group-item list-group-item-action"
            href: "#" + idStr + "list-item-2"
            text: "Item 2"
          }
          A {
            className: "list-group-item list-group-item-action"
            href: "#" + idStr + "list-item-3"
            text: "Item 3"
          }
          A {
            className: "list-group-item list-group-item-action"
            href: "#" + idStr + "list-item-4"
            text: "Item 4"
          }
          Block {text:d1(list,listTitle)}
        }
      }
      Div {
        dataSpy: "scroll"
        dataTarget: "#" + idStr
        dataOffset: "5"
        className: "scrollspy-example col-8 h200"
        idName: idStr + "-scroll"
        id: c2


        H4 {idName: idStr + "list-item-1"; text:  "Item 1" }
        P { text: "Ex consequat commodo adipisicing exercitation aute excepteur occaecat ullamco duis aliqua id magna ullamco eu. Do aute ipsum ipsum ullamco cillum consectetur ut et aute consectetur labore. Fugiat laborum incididunt tempor eu consequat enim dolore proident. Qui laborum do non excepteur nulla magna eiusmod consectetur in. Aliqua et aliqua officia quis et incididunt voluptate non anim reprehenderit adipisicing dolore ut consequat deserunt mollit dolore. Aliquip nulla enim veniam non fugiat id cupidatat nulla elit cupidatat commodo velit ut eiusmod cupidatat elit dolore." }
        H4 {idName: idStr + "list-item-2"; text: "Item 2" }
        P { text: "Ex consequat commodo adipisicing exercitation aute excepteur occaecat ullamco duis aliqua id magna ullamco eu. Do aute ipsum ipsum ullamco cillum consectetur ut et aute consectetur labore. Fugiat laborum incididunt tempor eu consequat enim dolore proident. Qui laborum do non excepteur nulla magna eiusmod consectetur in. Aliqua et aliqua officia quis et incididunt voluptate non anim reprehenderit adipisicing dolore ut consequat deserunt mollit dolore. Aliquip nulla enim veniam non fugiat id cupidatat nulla elit cupidatat commodo velit ut eiusmod cupidatat elit dolore." }
        H4 {idName: idStr + "list-item-3"; text: "Item 3" }
        P { text: "Ex consequat commodo adipisicing exercitation aute excepteur occaecat ullamco duis aliqua id magna ullamco eu. Do aute ipsum ipsum ullamco cillum consectetur ut et aute consectetur labore. Fugiat laborum incididunt tempor eu consequat enim dolore proident. Qui laborum do non excepteur nulla magna eiusmod consectetur in. Aliqua et aliqua officia quis et incididunt voluptate non anim reprehenderit adipisicing dolore ut consequat deserunt mollit dolore. Aliquip nulla enim veniam non fugiat id cupidatat nulla elit cupidatat commodo velit ut eiusmod cupidatat elit dolore." }
        H4 {idName: idStr + "list-item-4"; text: "Item 4" }
        P { text: "Ex consequat commodo adipisicing exercitation aute excepteur occaecat ullamco duis aliqua id magna ullamco eu. Do aute ipsum ipsum ullamco cillum consectetur ut et aute consectetur labore. Fugiat laborum incididunt tempor eu consequat enim dolore proident. Qui laborum do non excepteur nulla magna eiusmod consectetur in. Aliqua et aliqua officia quis et incididunt voluptate non anim reprehenderit adipisicing dolore ut consequat deserunt mollit dolore. Aliquip nulla enim veniam non fugiat id cupidatat nulla elit cupidatat commodo velit ut eiusmod cupidatat elit dolore." }
        Block {text:d2(list,listTitle,data)}

      }
    }

//    Component.onCompleted: console.log(d(list,data))

  }
}
