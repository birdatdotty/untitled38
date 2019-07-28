#ifndef HTMLA_H
#define HTMLA_H

#include "HTMLEl.h"

class HTMLA : public HTMLEl
{
  Q_OBJECT
  Q_PROPERTY(QString href READ getHref WRITE setHref)

public:
  HTMLA();
//  QString out();

  QString getHref();
  Q_INVOKABLE void setHref(QString newHref);


private:
  QString getOpts(QString optStr = "");
  QString href;
};

#endif // A_H
