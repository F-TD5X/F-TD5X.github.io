#!/bin/bash

# clean up old files & install hexo-cli
rm -rf node_modules && npm install --force
# publish
hexo generate
