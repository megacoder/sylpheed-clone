#!/bin/sh

# ACLOCAL=aclocal-1.14
# AUTOMAKE=automake-1.14
ACLOCAL=aclocal
AUTOMAKE=automake

$ACLOCAL -I ac \
  && libtoolize --force --copy \
  && autoheader \
  && $AUTOMAKE --add-missing --foreign --copy \
  && autoconf \
  && ./configure $@
