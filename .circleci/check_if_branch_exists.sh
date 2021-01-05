#!/bin/bash
COUNT=$(git ls-remote --heads origin $CIRCLE_BRANCH | wc -l)
if [[ $COUNT == 1 ]]; then
        git checkout $CIRCLE_BRANCH
else
        git checkout -b $CIRCLE_BRANCH
        git push -u origin $CIRCLE_BRANCH
fi