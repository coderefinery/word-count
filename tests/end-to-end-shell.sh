#!/bin/bash

# This should be run from the main word-count directory, *not* the `tests/`
# directory.

# This is an end-to-end test of count.py.  It runs the script and
# tests that a few lines are correct.

# Check that `the` appears 4044 times.  The 'grep' command returns
# true if somethin is found that matches.
if python3 statistics/count.py data/abyss.txt | grep "the 4044" ; then
    echo "Success: 'the' found correct number of times"
else
    echo "Fail: 'the' not correct"
    exit 1
fi


# Check that `and` appears 2807 times
if python3 statistics/count.py data/abyss.txt | grep "and 2807" ; then
    echo "Success: 'and' found correct number of times"
else
    echo "Fail: 'and' not correct"
    exit 1
fi

echo "Success"
