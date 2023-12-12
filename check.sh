#!/bin/bash

VERSION=$1
cd ~/workdir/postgresql-${VERSION}/contrib/sqlite_fdw

last_line=$(tail -n 1 make_check.out)

if [ "$last_line" != "# All 20 tests passed." ]; then
    echo "Error: The last line of make_check.out is not '# All 20 tests passed.'"
    exit 1
fi
