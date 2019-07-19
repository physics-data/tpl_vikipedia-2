#!/bin/bash

rm -rf data-test
cp -r data data-test
if [ -t 1 ]; then
    echo 'Running replace.sh'
fi
timeout 1 bash ./replace.sh data-test rules.txt 1>stdout.output 2>stderr.output
if diff -u -r data-test data-ans -x "*.bak" >diff.output; then
    if [ -t 1 ]; then
        echo 'Passed'
    else
        echo '{"grade":"100"}'
    fi
else
    if [ -t 1 ]; then
        echo 'Wrong'
        echo 'Diff stdout:'
        cat diff.output
        echo 'Program stdout:'
        cat stdout.output
        echo 'Program stderr:'
        cat stderr.output
    else
        echo '{"grade":"0"}'
    fi
fi
