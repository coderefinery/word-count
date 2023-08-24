#!/usr/bin/env python3

# This should be run from the main word-count directory, *not* the `tests/`
# directory.

import subprocess
import sys

# Run count.py using whatever Python we are using right now.  Get the output as
# a string.
output = subprocess.check_output([sys.executable, 'statistics/count.py', 'data/abyss.txt']).decode()

# Split the string and confirm the expected lines are in there.
output = output.split('\n')
assert 'the 4044' in output
assert 'and 2807' in output
print("Success")
