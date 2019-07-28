function setSite() {
    var stiky = "position: sticky;" +
                "top: 0;" +
                "z-index: 3;"

    site.setRoot("/srv/www/testsite.local/public_html/")
    site.setStyleFile("/style1.css")
    site.addStyleRule("p {text-indent: 1.5em;}");
    site.addStyleRule(".Left {float: left;}");
    site.addStyleRule("#menu {"+stiky+"}")
}
