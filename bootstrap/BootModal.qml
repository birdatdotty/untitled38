import QtQuick 2.0
import El 1.0
import Block 1.0
import Label 1.0

Block {
//    property var test: Block
    function makeid(length, word = '')
    {
//     https://stackoverflow.com/questions/1349404/generate-random-string-characters-in-javascript#answer-1349426
      var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
      var charactersLength = characters.length;
      for ( var i = 0; i < length; i++ )
        word += characters.charAt(Math.floor(Math.random() * charactersLength));

      return word;
    }

    property var header: "Message"
    property string idStr: makeid(10)
    property string buttonStr: "button"
    property var body: Block
    property var footer: Block

    El {
       type: "button"
       typeName: "button"
       className: "btn btn-primary"
       dataToggle: "modal"
       dataTarget: "#" + idStr
       text: buttonStr
    }
    El {
        idName: idStr
        typeName: "div"
        className: "modal fade bd-example-modal-xl"
        tabindex: "-1"
        role: "dialog"
        ariaLabelledby: "myExtraLargeModalLabel"
        ariaHidden: "true"
        El {
            typeName: "div"
            className: "modal-dialog modal-xl"
            El {
                typeName: "div"
                className: "modal-content"
El {
    typeName: "div"
    className: "modal-header"
    El {
        typeName: "h5"
        text: header
    }
    El {
        typeName: "button"
        type: "button"
        className: "close"
        dataDismiss: "modal"
        ariaLabel: "Close"
        El {
            typeName: "span"
            ariaHidden: "true"
            text: "&times;"
        }
    }
}
El {
     className: "modal-body"
     typeName: "div"
     El {
         typeName: "form"
         Block {text: body.out()}
     }
}
El {
    typeName: "div"
    className: "modal-footer"
//    <button type="button" class="btn btn-secondary"
//    data-dismiss="modal">Close</button>
    El {
        typeName: "button"
        type: "button"
        className: "btn btn-secondary"
        dataDismiss: "modal"
        text: "Close"
    }
}

            }
        }

    }
}
