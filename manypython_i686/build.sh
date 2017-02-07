#!/bin/bash

set -e -x

for PYVER3 in 3.6.0 3.5.3 3.4.5 3.3.6 3.2.6 2.7.13 2.6.9; do
	PYVER2=$(echo "$PYVER3" | sed 's/\([0-9]\+\)\.\([0-9]\+\).*/\1\2/')
	wget -q -O - https://www.python.org/ftp/python/${PYVER3}/Python-${PYVER3}.tgz | tar xzvf -
	cd "Python-${PYVER3}"
	./configure --prefix="/opt/py${PYVER2}" && make && make install
	make distclean
	./configure --prefix="/opt/py${PYVER2}d" --with-pydebug && make && make install
	cd ..
	rm -r "Python-${PYVER3}"
done

find /opt/py* -name \*.py[co] -delete
