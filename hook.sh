#!/bin/sh
cd ../..
ls
pwd
BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo Current Branch: ${BRANCH}
sed -i "s/branch=\w*/branch=${BRANCH}/g" README.md
sed -i "s/SpellChecking:\w*/SpellChecking:${BRANCH}/g" README.md
git add README.md && git commit -m"Updated branch refs in README."
exit 0
