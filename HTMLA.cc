#include "HTMLA.h"

HTMLA::HTMLA()
{typeName = "a";}

//QString HTMLA::out()
//{
//  return "<a" + HTMLA::getOpts() + ">" + text + "</a>";
//}

QString HTMLA::getOpts(QString optStr)
{
//  QString opts = HTMLEl::getOpts();
  if (href.size() > 0)
    optStr += " href='" + href + "'";

  return HTMLEl::getOpts(optStr);
}

QString HTMLA::getHref()
{ return href;  }
void HTMLA::setHref(QString newHref)
{ href = newHref; optsMap["A"] = getOpts(); }
