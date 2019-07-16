#!/bin/bash

DIR_NAME="" # how to get it?
RULES_FILE=""

RULES=$(cat ${RULES_FILE})

laundary_data() {
    for i in ""; do # how to get the list of files & subdirectories?
        if ???; then # check if $i is directory
            # $i is directory, recursively call function
        else
            # $i is file, do replace
            for rule in ${RULES}; do
                # apply rule like 'foo/bar' with sed
            done
        fi
    done
}

laundary_data ${DIR_NAME};

