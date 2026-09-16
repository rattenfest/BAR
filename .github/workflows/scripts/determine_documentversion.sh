#!/bin/bash
# This script is used in the pipeline to check the git taggs
set -e

REF_TYPE=$1
REF_NAME=$2
EVENT_NAME=$3
PR_NUMBER=$4

# Get current Tag
git fetch --tags --force 2>/dev/null || true
LATEST_TAG=$(git tag --sort=-creatordate | grep '^Review-' | head -n 1)

if [ "$REF_TYPE" == "tag" ]; then
  # Release
  TAG_NAME="$REF_NAME"
  if [[ "$TAG_NAME" == Review-* ]]; then
    REVIEW_NUM=${TAG_NAME#Review-}
    VERSION="1.${REVIEW_NUM}.0"
  else
    VERSION="$TAG_NAME"
  fi
else
  # PRs or Runs
  # Count commits since last release
  COMMITS_SINCE_TAG=$(git rev-list --count ${LATEST_TAG}..HEAD 2>/dev/null || echo "0")

  # Get number from Review x
  if [[ "$LATEST_TAG" == Review-* ]]; then
    REVIEW_NUM=${LATEST_TAG#Review-}
    MAJOR_MINOR="1.${REVIEW_NUM}"
  else
    MAJOR_MINOR=$(echo "${LATEST_TAG#v}" | cut -d. -f1,2)
  fi

  # Add commit count
  VERSION="${MAJOR_MINOR}.${COMMITS_SINCE_TAG}"

  # On Pull Request add commit info
  if [ "$EVENT_NAME" == "pull_request" ] && [ -n "$PR_NUMBER" ]; then
    VERSION="${VERSION}-PR${PR_NUMBER}"
  fi
fi

echo "$VERSION"