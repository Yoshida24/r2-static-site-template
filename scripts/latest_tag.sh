#!/usr/bin/env bash

set -e

TODAY=$(date '+%Y%m%d')

tag_num=$(git tag | grep "release-${TODAY}" | wc -l)
new_tag_num=$((${tag_num} + 1))

new_tag=release-${TODAY}-${new_tag_num}

echo "$new_tag"
git tag "$new_tag"
git push origin tag "$new_tag"

git tag -d latest || echo "tag:latest does not exist"
git tag latest
git push -f origin tag latest

echo "deploy status: https://github.com/Yoshida24/r2-static-site-template/actions"
