#!/bin/bash
if [[ `git status --porcelain` ]]; then
    echo "changes found in $(pwd)" >> /tmp/_git-tracker.log
    git add -A
    git commit -m 'automated'
    git push origin master
    echo "pushed changes to master for $(pwd)" >> /tmp/_git-tracker.log
fi
