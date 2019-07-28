#include "HTMLA.h"
#include "HTMLBlock.h"
#include "HTMLButton.h"
#include "HTMLDiv.h"
#include "HTMLEl.h"
#include "HTMLLabel.h"
#include "HTMLNav.h"
#include "HTMLH.h"
#include "Txt.h"
#include "HTMLP.h"
#include "Page.h"
#include "Root.h"
#include "HTMLImg.h"
#include "HTMLTitle.h"
#include "HTMLStyle.h"

#include "Console.h"
#include "PHPFun.h"
#include "PHPFuncs.h"
#include "Site.h"

//#include <QGuiApplication>
//#include <QQmlApplicationEngine>
#include <QCoreApplication>
#include <QQmlEngine>
#include <QQmlComponent>
#include <QDebug>
#include <QFile>
#include <QDir>

QString openJs(QString config)
{
  QString ret;
  QFile jsFile(config);
  if (jsFile.open(QIODevice::ReadOnly))
    ret = jsFile.readAll();

  qInfo() << ret;

  return ret;
}


int main(int argc, char *argv[])
{
  QCoreApplication app(argc, argv);

  QString fn = "qrc:/main.qml";
  QString config = ":/Configure.js";

  if (argc > 1)
    {
      fn = argv[1];
      if (!fn.startsWith("/"))
        fn = QDir::currentPath() + "/" + fn;
    }

  qmlRegisterType<HTMLA>("A", 1,0, "A");
  qmlRegisterType<HTMLBlock>("Block", 1,0, "Block");
  qmlRegisterType<HTMLButton>("Button", 1,0, "Button");
  qmlRegisterType<HTMLDiv>("Div", 1,0, "Div");
  qmlRegisterType<HTMLEl>("El", 1,0, "El");
  qmlRegisterType<HTMLLabel>("Label", 1,0, "Label");
  qmlRegisterType<HTMLNav>("Nav", 1,0, "Nav");
  qmlRegisterType<HTMLH1>("H1", 1,0, "H1");
  qmlRegisterType<HTMLH2>("H2", 1,0, "H2");
  qmlRegisterType<HTMLH3>("H3", 1,0, "H3");
  qmlRegisterType<HTMLH4>("H4", 1,0, "H4");
  qmlRegisterType<HTMLH5>("H5", 1,0, "H5");
  qmlRegisterType<HTMLH6>("H6", 1,0, "H6");
  qmlRegisterType<HTMLP>("P", 1,0, "P");
  qmlRegisterType<Page>("Page", 1,0, "Page");
  qmlRegisterType<Root>("Root", 1,0, "Root");
  qmlRegisterType<HTMLImg>("Img", 1,0, "Img");
  qmlRegisterType<HTMLTitle>("Title", 1,0, "Title");
  qmlRegisterType<HTMLStyle>("Style", 1,0, "Style");

  qmlRegisterType<PHPFuncs>("PHPFuncs", 1,0, "PHPFuncs");
  qmlRegisterType<PHPFun>("PHPFun", 1,0, "PHPFun");

  Site* site = new Site();
  Console* console = new Console();


  QJSEngine jsEngine;
//  QJSValue evaluationResult =
      jsEngine.evaluate(openJs(config));
  qInfo() << __LINE__;
  const QJSValue jsSite = jsEngine.newQObject(site);
  jsEngine.globalObject().setProperty("site", jsSite);
  const QJSValue jsConsole = jsEngine.newQObject(console);
  jsEngine.globalObject().setProperty("console", jsConsole);

  QJSValue setSite = jsEngine.globalObject().property("setSite");
  QJSValue callResult = setSite.call();
  if (callResult.isError()) {
      qWarning() << "Error calling 'foo' function:" << callResult.toString();
      return 1;
  }
  if (!jsEngine.globalObject().hasProperty("setSite")) {
      qWarning() << "Script has no 'foo' function";
      return 1;
  }

  if (!jsEngine.globalObject().property("setSite").isCallable()) {
      qWarning() << "'foo' property of script is not callable";
      return 1;
  }


//  QJSValue callResult = jsEngine.globalObject().property("setSite").call();

  qInfo() << callResult.toString();
  qInfo() << site->getStyleFile();
  qInfo() << __LINE__;

  QQmlEngine engine;
//  site->setStyleFile("/style.css");
  const QJSValue qJSValueSite = engine.newQObject(site);
  engine.globalObject().setProperty("site", qJSValueSite);
//  engine



  // Write tamplates of pages
  QQmlComponent component(&engine, QUrl(fn));
  Root* root = qobject_cast<Root*>(component.create());
  root->wite();

  // Write css js files
  QString cssFile = site->getStyleFile();
  QString cssCtx = site->getStyleBlock();
  root->writeFile(cssFile, cssCtx);

  return 0;
}
