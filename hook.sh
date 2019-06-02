#!/bin/sh
ls
pwd
BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo Current Branch: ${BRANCH}
sed -i -r 's/branch=(\w|-)*/branch='"${BRANCH}"'/g' README.md
sed -i -r 's/SpellChecking:(\w|-)*/SpellChecking:'"${BRANCH}"'/g' README.md
git add README.md && git commit -m"Updated branch refs in README."
exit 0
