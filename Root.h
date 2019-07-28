#ifndef ROOT_H
#define ROOT_H

#include <QObject>
#include <QQmlListProperty>

#include <QObject>
#include "Page.h"

class Root: public QObject
{
  Q_OBJECT
  // Добавим возможность добавления элементов (QML)
  Q_PROPERTY(QQmlListProperty<Page> pageList READ pageList)
  Q_PROPERTY(QString root READ getRoot WRITE setRoot)
  Q_CLASSINFO("DefaultProperty", "pageList")

  public:
    Root();
    QQmlListProperty<Page> pageList();
    void appendPage(Page*);
    int pageCount() const;
    Page *page(int) const;
    void clearPages();

  private:
    static void appendPage(QQmlListProperty<Page>*, Page*);
    static int pageCount(QQmlListProperty<Page>*);
    static Page* page(QQmlListProperty<Page>*, int);
    static void clearPages(QQmlListProperty<Page>*);

    QList<Page*> pages;
    QString root;

  // blocksList будет функцией по умолчанию

  public:
    void wite();
    void writeFile(QString file, QString ctx);
    void setRoot(QString dir);
    QString getRoot();
};

#endif // ROOT_H
