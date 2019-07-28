#include "HTMLEl.h"
#include <QDebug>
HTMLEl::HTMLEl(QObject */*parent*/)
{
  tab = 2;
}

QString HTMLEl::out()
{
  QString blocksStr;
  QString optStr;// = HTMLEl::getOpts();
  for (QString key: optsMap.keys())
    optStr += optsMap[key];

  for (HTMLBlock* i: children) {
      blocksStr += i->out();
  }

  int calculateCount = parent ? parent->tabCount() : 0;
  QString ret;
  if (children.size() > 0)
    ret = QString("  ").repeated(calculateCount) + "<" + typeName + optStr + ">\n" +
          blocksStr +
          QString("  ").repeated(calculateCount) + "</" + typeName + ">\n";
  else
    ret = QString("  ").repeated(calculateCount) +
          "<" + typeName + optStr + ">" +
          text + "</" + typeName + ">\n";

  return  ret;
}

int HTMLEl::tabCount()
{
  if (parent == nullptr)
    return tab;
  else
    return tab + parent->tabCount();

}

QString HTMLEl::getOpts(QString optStr)
{
  if (id.size() > 0)
    optStr += " id='" + id + "'";
  if (className.size() > 0)
    optStr += " class='" + className + "'";
  if (dataTarget.size() > 0)
    optStr += " data-target='" + dataTarget + "'";
  if (dataToggle.size() > 0)
    optStr += " data-toggle='" + dataToggle + "'";
  if (ariaControls.size() > 0)
    optStr += " aria-controls='" + ariaControls + "'";
  if (ariaExpanded.size() > 0)
    optStr += " aria-expanded='" + ariaExpanded + "'";
  if (ariaLabel.size() > 0)
    optStr += " aria-label='" + ariaLabel + "'";
  if (ariaLabelledby.size() > 0)
      optStr += " aria-labelledby='" + ariaLabelledby + "'";
  if (role.size() > 0)
      optStr += " role='" + role + "'";
  if (type.size() > 0)
      optStr += " type='" + type + "'";
  if (dataRide.size() > 0)
    optStr += " data-ride='" + dataRide + "'";
  if (tabindex.size() > 0)
      optStr += " tabindex='" + tabindex + "'";
  if (ariaHidden.size() > 0)
    optStr += " aria-hidden='" + ariaHidden + "'";
  if (dataDismiss.size() > 0)
      optStr += " data-dismiss='" + dataDismiss + "'";
  if (dataSpy.size() > 0)
    optStr += " data-spy='" + dataSpy + "'";
  if (dataOffset.size() > 0)
    optStr += " data-offset='" + dataOffset + "'";


  return optStr;
}
