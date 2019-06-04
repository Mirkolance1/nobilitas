#!/usr/bin/env bash

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

NOBILITASD=${NOBILITASD:-$BINDIR/nobilitasd}
NOBILITASCLI=${NOBILITASCLI:-$BINDIR/nobilitas-cli}
NOBILITASTX=${NOBILITASTX:-$BINDIR/nobilitas-tx}
WALLET_TOOL=${WALLET_TOOL:-$BINDIR/nobilitas-wallet}
NOBILITASQT=${NOBILITASQT:-$BINDIR/qt/nobilitas-qt}

[ ! -x $NOBILITASD ] && echo "$NOBILITASD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
NOBIVER=($($NOBILITASCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for nobilitasd if --version-string is not set,
# but has different outcomes for nobilitas-qt and nobilitas-cli.
echo "[COPYRIGHT]" > footer.h2m
$NOBILITASD --version | sed -n '1!p' >> footer.h2m

for cmd in $NOBILITASD $NOBILITASCLI $NOBILITASTX $WALLET_TOOL $NOBILITASQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${NOBIVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${NOBIVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
