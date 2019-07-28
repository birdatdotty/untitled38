#ifndef PHPFun_H
#define PHPFun_H

#include "HTMLBlock.h"

class PHPFun : public HTMLBlock
{
  Q_OBJECT
  Q_PROPERTY(QString name READ getName WRITE setName)
  Q_PROPERTY(QString args READ getArgs WRITE setArgs)
  Q_PROPERTY(HTMLBlock* obj READ getObj WRITE setObj)

public:
  PHPFun();
  QString out();

  Q_INVOKABLE QString getName();
  Q_INVOKABLE void setName(QString newHref);
  Q_INVOKABLE QString getArgs();
  Q_INVOKABLE void setArgs(QString newArgs);
  Q_INVOKABLE HTMLBlock* getObj();
  Q_INVOKABLE void setObj(HTMLBlock* newobj);


private:
  QString name;
  QString args;
  HTMLBlock* obj;
};

#endif // PHPFun_H
