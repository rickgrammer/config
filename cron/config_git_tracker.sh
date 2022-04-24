#!/bin/bash
if [[ `git status --porcelain` ]]; then
    echo "$(date) changes found in $(pwd)"
    git add -A
    git commit -m 'automated'
    git push origin master
    echo "pushed changes to master for $(pwd)"
fi

