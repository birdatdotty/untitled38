import Block 1.0
import P 1.0

Block {

//    text: '
//<html>
// <head>
//  <title>Тестируем PHP</title>
// </head>
// <body>
//   <?php echo "<p>Привет, мир1!</p>\n"; ?>
//111111111
// </body>
//</html>
//'
    function oToFun(obj)
    {
        return obj.out()
    }
    Block {text: "fun($arg1){"
                 + oToFun('P{text: "$arg1"}')
                 + "}"}
//    PHP{ str: 'echo "<p>Привет, мир1!</p>\n"' }
}
