#ifndef SITE_H
#define SITE_H

#include <QObject>
#include <QSet>
#include "Page.h"

class Site : public QObject
{
  Q_OBJECT
public:
  explicit Site(QObject *parent = nullptr);
  Q_INVOKABLE void setStyleFile(QString fileName);
  Q_INVOKABLE QString getStyleFile();
  Q_INVOKABLE void addStyleRule(QString style);
  Q_INVOKABLE QString getHtmlStyle();
  Q_INVOKABLE void setRoot(QString dirName);
  Q_INVOKABLE QString getRoot();
  Q_INVOKABLE QString getStyleBlock();
  Q_INVOKABLE QString fish(int linesCount = 1);

private:
  QString styleFile;
  QString root;
  QSet<QString> styleRules;
signals:

public slots:
};

#endif // SITE_H
