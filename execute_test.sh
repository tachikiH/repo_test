#!/bin/bash
VERSION=$1
cd ~/workdir/postgresql-${VERSION}/contrib/sqlite_fdw
./test.sh

last_line=$(tail -n 1 make_check.out)
third_line_from_the_last=$(tail -n +3 make_check.out | tail -n 1)
string_test_passed="All 20 tests passed"

if [[ $last_line != *$string_test_passed* ] && [ $third_line_from_the_last != *$string_test_passed* ]]; then
    echo "Error: The last line or third line from the last of make_check.out does not contain 'All 20 tests passed'"
    exit 1
fi
