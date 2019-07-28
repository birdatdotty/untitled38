#include "HTMLLabel.h"

HTMLLabel::HTMLLabel()
{
  typeName = "label";
}

QString HTMLLabel::getOpts(QString optStr)
{
  if (argFor.size() > 0)
    optStr += " for='" + argFor + "'";

  return  HTMLEl::getOpts(optStr);
}

QString HTMLLabel::getArgFor()
{
  return argFor;
}

void HTMLLabel::setArgFor(QString newArgFor)
{
  argFor = newArgFor;
  optsMap["label"] = getOpts();
}
