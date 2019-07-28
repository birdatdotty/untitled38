#ifndef HTMLSTYLE_H
#define HTMLSTYLE_H

#include "HTMLEl.h"

class HTMLStyle : public HTMLEl
{
  Q_OBJECT

public:
  HTMLStyle() {typeName = "style";}
};

#endif // HTMLSTYLE_H
