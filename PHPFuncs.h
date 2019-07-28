#ifndef PHPFuncs_H
#define PHPFuncs_H

#include <QObject>
#include "HTMLBlock.h"

class PHPFuncs : public HTMLBlock
{
  Q_OBJECT
  Q_PROPERTY(QString name READ getName WRITE setName)

public:
  PHPFuncs() {}
  QString out()
  {
    QString begin = "<?php\n";
    QString end = "?>";
    QStringList funcs;

    for (HTMLBlock *php: children)
      begin += php->out();

    return begin + end;
  }

  Q_INVOKABLE QString getName() {return name;}
  Q_INVOKABLE void setName(QString newName)
  {name = newName;}

private:
  QString name;
};

#endif // PHPFun_H
