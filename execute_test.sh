#!/bin/bash
VERSION=$1
cd ~/workdir/postgresql-${VERSION}/contrib/sqlite_fdw
./test.sh

last_line=$(tail -n 1 make_check.out)
third_linef_from_the_last=$(tail -n +3 make_check.out | tail -n 1)
string_test_passed="All 20 tests passed."

if [[ $last_line != *$string_test_passed* ]] || [[ $third_linef_from_the_last != *$string_test_passed* ]]; then
    echo "Error: The last line of make_check.out is not '# All 20 tests passed.'"
    exit 1
fi
