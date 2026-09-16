#!/bin/bash
# This script is used in the pipeline to check the git taggs
set -e

REF_TYPE=$1
REF_NAME=$2
CURRENT_SHA=$3

echo "=== Start diff preparation ==="

if [ "$REF_TYPE" == "tag" ]; then
  # Find newes tag
  PREVIOUS_REF=$(git tag --sort=-creatordate | grep -v "^${REF_NAME}$" | head -n 1)
  echo "New Tag, compare to other tag: $PREVIOUS_REF"
else
  # If it is a PR or branch
  PREVIOUS_REF=$(git tag --sort=-creatordate | head -n 1)
  echo "Pull Request/Branch. Compare to other tag: $PREVIOUS_REF"
fi

if [ -n "$PREVIOUS_REF" ]; then
  # Add all files into one big file
  python3 /tmp/flatten.py docs/main.typ docs/current_flat.typ

  # Checkout to old version and add all files into one big file
  git checkout "$PREVIOUS_REF"

  python3 /tmp/flatten.py docs/main.typ docs/old_flat.typ

  # Back to the current version
  git checkout "$CURRENT_SHA"

  # Do the diff tool
  typdiff docs/old_flat.typ docs/current_flat.typ -o docs/diff.typ
  echo "Created diff"
else
  echo "No old Tags found"
fi