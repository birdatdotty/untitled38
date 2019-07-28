#include "HTMLBlock.h"

QQmlListProperty<HTMLBlock> HTMLBlock::blocksList()
{
  return QQmlListProperty<HTMLBlock>(this, this,
           &HTMLBlock::appendBlock,
           &HTMLBlock::blockCount,
           &HTMLBlock::block,
           &HTMLBlock::clearBlocks);
}

void HTMLBlock::appendBlock(HTMLBlock *el)
{
  el->parent = this;
  children.append(el);
}

int HTMLBlock::blocksCount() const
{
  return children.size();
}

HTMLBlock *HTMLBlock::block(int i) const
{
  return children.at(i);
}

void HTMLBlock::clearBlocks()
{
  children.clear();
}

void HTMLBlock::appendBlock(QQmlListProperty<HTMLBlock> *list, HTMLBlock *el)
{
  reinterpret_cast< HTMLBlock* >(list->data)->appendBlock(el);
}

int HTMLBlock::blockCount(QQmlListProperty<HTMLBlock> *list)
{
  return reinterpret_cast< HTMLBlock* >(list->data)->blocksCount();
}

HTMLBlock *HTMLBlock::block(QQmlListProperty<HTMLBlock> *list, int i)
{
  return reinterpret_cast< HTMLBlock* >(list->data)->block(i);
}

void HTMLBlock::clearBlocks(QQmlListProperty<HTMLBlock> *list)
{
  return reinterpret_cast< HTMLBlock* >(list->data)->clearBlocks();
}
