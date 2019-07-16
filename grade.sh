#!/bin/bash

rm -rf data-test
cp -r data data-test
echo 'Running replace.sh'
timeout 1 bash ./replace.sh data-test rules.txt 1>stdout.output 2>stderr.output
if diff -u -r data-ans data-test; then
    echo 'Passed'
else
    echo 'Wrong'
    echo 'Program stdout:'
    cat stdout.output
    echo 'Program stderr:'
    cat stderr.output
fi
