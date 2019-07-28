import Block 1.0
import El 1.0
import A 1.0
import Button 1.0

El {
    property var activePage: ""
    property var list
    property var listTitle
    property var listUrl
  typeName: "nav"
  className: "navbar navbar-expand-lg navbar-light bg-light"

  function genItems(activePage, list, listTitle, listUrl)
  {
      if (list === undefined)
          return;
      var block = Qt.createQmlObject('import Block 1.0;Block{}', navbarNav)
      for (var i = 0; i < list.length; i++)
        {
          var key = list[i]
          var title = listTitle[key]
          var url = listUrl[key]
          var item
          console.log("activePage:",activePage)
          console.log("key:",key)
          if (activePage === key)
            item = Qt.createQmlObject('NavBarLiActive{}',block);
          else
            item = Qt.createQmlObject('NavBarLi{}',block);

          item.li = title;
          if (url)
            item.url = url;

          block.appendBlock(item)
        }
      return block.out();

  }


  A {
    className: "navbar-brand"
    text: activePage
//    href: "#"
  }
  Button {
      className: "navbar-toggler"
      type: "button"
      dataToggle: "collapse"
      dataTarget: "#navbarNav"
      ariaControls: "navbarNav"
      ariaExpanded: "false"
      ariaLabel: "Toggle navigation"
      El {
          typeName: "span"
          className: "navbar-toggler-icon"
      }
  }
  El {
      typeName: "div"
      className: "collapse navbar-collapse"
      idName: "navbarNav"
      id: navbarNav
      El {
          typeName: "ul"
          className: "navbar-nav"
          Block{ text: genItems(activePage, list, listTitle, listUrl) }
      }
  }
}
