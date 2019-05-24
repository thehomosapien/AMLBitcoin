#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

AMLBITCOIND=${AMLBITCOIND:-$SRCDIR/AmlBitcoind}
AMLBITCOINCLI=${AMLBITCOINCLI:-$SRCDIR/AmlBitcoin-cli}
AMLBITCOINTX=${AMLBITCOINTX:-$SRCDIR/AmlBitcoin-tx}
AMLBITCOINQT=${AMLBITCOINQT:-$SRCDIR/qt/AmlBitcoin-qt}

[ ! -x $AMLBITCOIND ] && echo "$AMLBITCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
AMLVER=($($AMLBITCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for AmlBitcoind if --version-string is not set,
# but has different outcomes for AmlBitcoin-qt and AmlBitcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$AMLBITCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $AMLBITCOIND $AMLBITCOINCLI $AMLBITCOINTX $AMLBITCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${AMLVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${AMLVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
