#!/usr/bin/env bash

git fetch --no-tags --prune --depth=1 origin $BASE_REF $HEAD_REF

CHANGED_FILES=$(git diff --name-only origin/$BASE_REF origin/$HEAD_REF)

if [[ $CHANGED_FILES == $TARGET_FILES ]]; then
  exit 0
else
  exit 1
fi
