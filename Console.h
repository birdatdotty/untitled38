#ifndef CONSOLE_H
#define CONSOLE_H

#include <QObject>

class Console : public QObject
{
  Q_OBJECT
public:
  explicit Console(QObject *parent = nullptr);
public:
  Q_INVOKABLE void log(QString str);


signals:

public slots:
};

#endif // CONSOLE_H
