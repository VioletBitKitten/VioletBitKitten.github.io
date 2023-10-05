#!/bin/sh
# Build and serve the Blog using Jekyll.

# Delete the site files to rebuild from scratch.
echo "Deleting the site files."
rm -rf _site > /dev/null 2>&1

# Build the site and start the server.
echo "Building the site and serving in Development mode."
export JEKYLL_ENV=development
bundle exec jekyll serve --watch
