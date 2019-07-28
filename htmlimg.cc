#include "HTMLImg.h"

QString HTMLImg::out()
{
  QString optStr;// = HTMLEl::getOpts();
  for (QString key: optsMap.keys())
    optStr += optsMap[key];

  QString ret = QString("  ").repeated(parent->tabCount())
//      +"<img src='" + src + "'>\n";
      +"<img " + optStr + ">\n";
  return ret;
}

QString HTMLImg::getSrc()
{
  return src;
}

void HTMLImg::setSrc(QString newSrc)
{
  src = newSrc;
  optsMap["Img"] = " src='" + src + "'";
}
