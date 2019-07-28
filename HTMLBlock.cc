#include "HTMLBlock.h"

HTMLBlock::HTMLBlock()
{
  tab = 0;
}

HTMLBlock::HTMLBlock(QString str)
{
  text = str;
}
#include <QDebug>
QString HTMLBlock::out()
{
  int calculateCount = parent ? parent->tabCount() : 0;
  if (text.size() > 0)
    {
//      return
      QString ret = QString("  ").repeated(calculateCount) +
                    text.split("\n")
                    .join("\n" + QString("  ")
                    .repeated(calculateCount));

      QStringList test = ret.split("\n");
      if (test.last().simplified().size() == 0)
        {
          test.last() = "";
          ret = test.join("\n");
          return ret;
        }
//      if (ret.endsWith("\n"))

      return ret + "\n";
    }
  QString ret;
  for (HTMLBlock *block: children)
    ret += block->out();

  return ret;
}
#include <QDebug>
int HTMLBlock::tabCount()
{
  if (parent == nullptr)
    return 0;
  else
    return parent->tabCount();
}

void HTMLBlock::insert(HTMLBlock *block)
{
  blocks.append(block);
}

QString HTMLBlock::getText()
{
  return text;
}

void HTMLBlock::setText(QString newText)
{
  for (HTMLBlock *block: blocks)
    delete block;

  text = newText;
}
