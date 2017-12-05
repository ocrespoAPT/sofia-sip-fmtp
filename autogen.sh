#!/bin/sh

set -x
AUTOMAKE=${AUTOMAKE:-automake-1.14} ACLOCAL=${ACLOCAL:-aclocal-1.14}
export AUTOMAKE ACLOCAL
${AUTORECONF:-autoreconf} -i
find . \( -name 'run*' -o -name '*.sh' \) -a -type f | xargs chmod +x
chmod +x scripts/*
