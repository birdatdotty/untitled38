#include "Root.h"

Root::Root()
{

}

QQmlListProperty<Page> Root::pageList()
{
  return QQmlListProperty<Page>(this, this,
           &Root::appendPage,
           &Root::pageCount,
           &Root::page,
           &Root::clearPages);
}

void Root::appendPage(Page *page)
{
  pages.append(page);
}

int Root::pageCount() const
{
  return pages.size();
}

Page *Root::page(int i) const
{
  return pages.at(i);
}

void Root::clearPages()
{
  pages.clear();
}

void Root::appendPage(QQmlListProperty<Page> *list, Page *el)
{
  reinterpret_cast< Root* >(list->data)->appendPage(el);
}

int Root::pageCount(QQmlListProperty<Page> *list)
{
  return reinterpret_cast< Root* >(list->data)->pageCount();
}

Page *Root::page(QQmlListProperty<Page> *list, int i)
{
  return reinterpret_cast< Root* >(list->data)->page(i);
}

void Root::clearPages(QQmlListProperty<Page> *list)
{
  reinterpret_cast< Root* >(list->data)->clearPages();
}
#include "QDebug"

#include <QFile>
void Root::wite()
{
  qInfo() << "Hello from void Root::wite()";
//  qInfo() << "pages.size():";
//  qInfo() << pages.size();
  for (Page* page: pages)
    {
      qInfo() << root + "/" + page->getFile();
      QFile file (root + "/" + page->getFile());
      if ( file.open(QIODevice::ReadWrite | QIODevice::Truncate | QIODevice::Text) )
      {
          QTextStream stream( &file );
          stream << page->out();
      }
      else {
          qInfo() << "ERROR";
        }
      file.close();
    }

}

void Root::writeFile(QString fileName, QString ctx)
{
  QFile file (root + "/" + fileName);
  if ( file.open(QIODevice::ReadWrite | QIODevice::Truncate | QIODevice::Text) )
  {
    QTextStream stream( &file );
    stream << ctx;
    stream.flush();
  }
  else {
    qInfo() << "ERROR";
  }
  file.close();
}

void Root::setRoot(QString dir)
{
  root = dir;
}

QString Root::getRoot()
{
  return root;
}
