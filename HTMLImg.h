#ifndef HTMLIMG_H
#define HTMLIMG_H

#include "HTMLEl.h"

class HTMLImg : public HTMLEl
{
  Q_OBJECT
  Q_PROPERTY(QString src READ getSrc WRITE setSrc)

public:
  HTMLImg() {}
  QString out();// {return QString("  ").repeated(parent->tabCount()) +"<img src='" + src + "'>\n";}

  QString getSrc();
  Q_INVOKABLE void setSrc(QString newSrc);// {src = newSrc;}


private:
//  QString getOpts();
  QString src;
};

#endif // A_H
