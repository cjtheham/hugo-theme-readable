#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

# Query the codeberg.org API (see
# https://codeberg.org/api/swagger#/repository/repoListReleases) and use jq to
# get the tag name of the latest release (i.e. the first element of the array
# in the JSON output). Finally, use sed to remove the double quotes around the
# value.
TAG_VERSION=$(curl -s \
    -H 'accept: application/json' \
    https://codeberg.org/api/v1/repos/Freedom-to-Write/readable.css/releases \
    | jq '.[0].tag_name' \
    | sed 's/"//g')

echo "Latest tag: ${TAG_VERSION}"

# Get the current version.
# The '-o' option will only output the match grep found.
# We look for readable.min.css and a set of three numbers seperated by dots,
# i.e. a semantic version. readable.min.css is used to make sure that we match
# the right numbers in the file.
# We use sed to get rid of the readable.min.css prefix.
CURRENT_VERSION=$(grep -o \
    'readable.min.css?v=v[[:digit:]]\+\.[[:digit:]]\+\.[[:digit:]]\+' \
    layouts/partials/head.html \
    | sed 's/readable.min.css?v=//')
echo "Current version: ${CURRENT_VERSION}"

if [[ $TAG_VERSION == $CURRENT_VERSION ]]
then
    echo "Nothing to do. The current version is already up to date."
else
    curl -s "https://codeberg.org/Freedom-to-Write/readable.css/raw/tag/${TAG_VERSION}/readable.css" > static/css/readable.css
    curl -s "https://codeberg.org/Freedom-to-Write/readable.css/raw/tag/${TAG_VERSION}/readable.min.css" > static/css/readable.min.css
    sed -i "s/readable.min.css?v=${CURRENT_VERSION}/readable.min.css?v=${TAG_VERSION}/" layouts/partials/head.html
fi

# Add the latest tag version to the workflow environment, so we can access
# it in later steps.
echo "READABLE_CSS_TAG=${TAG_VERSION}" >> "$GITHUB_ENV"
