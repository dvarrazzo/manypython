#!/bin/bash

set -euo pipefail
set -x

for PYVER3 in 3.7.2 3.6.8 3.5.6 3.4.9 2.7.15; do
	PYVER2=$(echo "$PYVER3" | sed 's/\([0-9]\+\)\.\([0-9]\+\).*/\1\2/')
	wget -q -O - https://www.python.org/ftp/python/${PYVER3}/Python-${PYVER3}.tgz | tar xzvf -
	cd "Python-${PYVER3}"
	./configure --prefix="/opt/py${PYVER2}" && make -j 4 && make install
	make distclean
	./configure --prefix="/opt/py${PYVER2}d" --with-pydebug && make -j 4 && make install
	cd ..
	rm -r "Python-${PYVER3}"
done

find /opt/py* -name \*.py[co] -delete
