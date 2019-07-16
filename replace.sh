#!/bin/bash

DIR_NAME="" # how to get it?
RULES_FILE=""

RULES=$(cat ${RULES_FILE})

laundary_data() {
    for i in ""; do # how to get the list of files & subdirectories?
        if ???; then # check if $i is directory
            # $i is directory, recursively call function
            echo 'FIXME'
        else
            # $i is file, do replace
            for rule in ${RULES}; do
                # apply rule like 'foo/bar' with sed
                # use 'sed -i.bak' to replace file inplace
                # the grader will skip .bak files for comparison
                echo 'FIXME'
            done
        fi
    done
}

laundary_data ${DIR_NAME};

