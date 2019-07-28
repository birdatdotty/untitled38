#include "Console.h"
#include <QDebug>
Console::Console(QObject *parent) : QObject(parent)
{

}

void Console::log(QString str) {qInfo() << str;}
