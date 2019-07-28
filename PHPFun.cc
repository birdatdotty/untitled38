#include "PHPFun.h"

PHPFun::PHPFun()
{}

QString PHPFun::out()
{
//  return "<a" + HTMLA::getOpts() + ">" + text + "</a>";
  QString fun = obj->out() + "\\n";
  fun = "str_repeat(\"  \",$tab).\"" + fun.split("\n")
        .join("\n\"    .str_repeat(\"  \",$tab).\"");
  return "$"+name+" = function (int $tab, " + args +
          "){\n  return " +
          fun
          + "\";};\n";
}

QString PHPFun::getName()
{ return name; }
void PHPFun::setName(QString newName)
{ name = newName; }

QString PHPFun::getArgs()
{ return args; }
void PHPFun::setArgs(QString newArgs)
{ args = newArgs; }

HTMLBlock *PHPFun::getObj()
{return obj;}
void PHPFun::setObj(HTMLBlock *newobj)
{obj = newobj;}
