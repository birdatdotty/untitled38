#ifndef HTMLH_H
#define HTMLH_H

#include "HTMLEl.h"

class HTMLH1 : public HTMLEl
{
  Q_OBJECT

public:
  HTMLH1() {typeName = "h1";}
};

class HTMLH2 : public HTMLEl
{
  Q_OBJECT

public:
  HTMLH2() {typeName = "h2";}
};

class HTMLH3 : public HTMLEl
{
  Q_OBJECT

public:
  HTMLH3() {typeName = "h3";}
};

class HTMLH4 : public HTMLEl
{
  Q_OBJECT

public:
  HTMLH4() {typeName = "h4";}
};

class HTMLH5 : public HTMLEl
{
  Q_OBJECT

public:
  HTMLH5() {typeName = "h5";}
};

class HTMLH6 : public HTMLEl
{
  Q_OBJECT

public:
  HTMLH6() {typeName = "h6";}
};



#endif // HTMLH1_H
