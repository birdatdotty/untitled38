#ifndef HTMLTITLE_H
#define HTMLTITLE_H

#include "HTMLEl.h"

class HTMLTitle : public HTMLEl
{
  Q_OBJECT

public:
  HTMLTitle() {typeName = "title";}
};

#endif // A_H
