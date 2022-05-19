#!/bin/bash

git fetch --prune --unshallow 2>/dev/null
CURRENT_VERSION=`git describe --abbrev=0 --tags 2>/dev/null`

if [[ $CURRENT_VERSION == '' ]]
then
  CURRENT_VERSION='v0.0'
fi

echo "Current Version: $CURRENT_VERSION"

$NEW_TAG = $(echo CURRENT_VERSION | awk -F. -v OFS=. 'NF==1{print ++$NF}; NF>1{if(length($NF+1)>length($NF))$(NF-1)++; $NF=sprintf("%0*d", length($NF), ($NF+1)%(10^length($NF))); print}')

echo "New Tag: $NEW_TAG"

git tag $NEW_TAG
git push origin --tags
echo ::set-output name=git-tag::$NEW_TAG
exit 0
