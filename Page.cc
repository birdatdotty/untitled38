#include "Page.h"

Page::Page(QObject *parent) : QObject(parent)
{

}

QString Page::getFile()
{
  return file;
}

void Page::setFile(QString newFile)
{
  file = newFile;
}

HTMLBlock *Page::getPage()
{
  return ctx;
}

void Page::setPage(HTMLBlock *newPage)
{
  ctx = newPage;
}

QString Page::out()
{
  return ctx->out();
}
