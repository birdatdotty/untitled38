#ifndef HTMLLABEL_H
#define HTMLLABEL_H

#include "HTMLEl.h"

class HTMLLabel : public HTMLEl
{
  Q_OBJECT
  Q_PROPERTY(QString argFor READ getArgFor WRITE setArgFor)
public:
  HTMLLabel();

//  QString out();
  QString getOpts(QString optStr = "");

  QString getArgFor();
  void setArgFor(QString newArgFor);
};

#endif // HTMLLABEL_H
