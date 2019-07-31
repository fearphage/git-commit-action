#!/usr/bin/env sh

set -ef

git config --global user.name "$COMMIT_USER_NAME"
git config --global user.email "$COMMIT_USER_EMAIL"

if [ "$ADD_FILES" = "true" ]; then
  git add --all
fi

git commit --message "$COMMIT_MESSAGE"

git push origin HEAD
