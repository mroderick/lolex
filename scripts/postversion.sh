#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR > /dev/null

# check that that origin points to the sinonjs/fake-clock repo
git remote -v | grep 'origin.*sinonjs/fake-clock.*push' > /dev/null

if [[ $? != 0 ]]; then
    echo "'origin' doesn't point to the sinonjs/fake-clock repo. Fix tag push manually!"
    exit 1
fi

git push --follow-tags origin
