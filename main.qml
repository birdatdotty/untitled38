import Root 1.0
import Page 1.0
import Block 1.0
import PHPFun 1.0

import PHPFuncs 1.0
import A 1.0

Root {
    root: site.getRoot()

    Page
    {
        file: "index.html"
        page: Index{}
    }
    Page
    {
        file: "about.html"
        page: About{}
    }
    Page
    {
        file: "test.html"
        page: Test{}
    }
//    Page{
//        file: site.getStyleFile()
//        page: Block {text: site.getStyleBlock()}
//    }
    Page
    {
        file: "test.php"
//        page: TestPhp{}
//        page: PHPFun{name: "ss"; args:"$arg1";obj: A{href: "\".$arg1.\""}}
        page: PHPFuncs{
            PHPFun{ name: "ss"
                    args:"$arg12,$arg13"
                    obj: A{ href: "\".$arg12.\""
                            text: "\".$arg13.\""}}
            PHPFun{ name: "ss2";
                    args:"$arg12,$arg13";
                    obj: LgCenter{
                        A{ href: "\".$arg12.\""
                           text: "\".$arg13.\""}}}
        }
    }
//    PHPFun
//    {
//        file: "../A.php"
//        select: ""
//        Fun{ args: "", LgCenter{text: "$ARG1"}}
//        page: LgCenter{text: "$ARG1"}
//    }

}
