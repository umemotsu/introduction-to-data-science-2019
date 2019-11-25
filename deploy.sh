#!/bin/sh

CURRENT_DIR=$(pwd)
SCRIPT_DIR=$(cd $(dirname $0); pwd)

if [ $# -eq 1 ]; then
  COMMIT_MSG="$1"
else
  COMMIT_MSG="Automatic deployment"
fi

if [ "${CURRENT_DIR}" != "${SCRIPT_DIR}" ]; then
  echo "Error: Move the project root directory before running this script." >&2
  exit 1
fi

if [ "$(git status -s)" ]
then
  echo "Error: The working directory is dirty. Please commit any pending changes." >&2
  exit 1
fi

echo "Deleting old publication..." >&2
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public..." >&2
git worktree add -B gh-pages public origin/gh-pages

echo "Removing existing files..." >&2
rm -rf public/*

echo "Generating site..." >&2
hugo

echo "Updating gh-pages branch..." >&2
cd public && git add --all && git commit -m "${COMMIT_MSG}"

echo "Pushing to GitHub..." >&2
git push --all
