#!/bin/bash

# Run docker image to build the themes.
docker run -e PATTERN=sublime -v $PWD/output/:/src/output daylerees/rainglow:latest

# Kill old themes.
rm -rf ../themes/*.tmTheme

# Move themes to the root.
cp -R output/sublime/* ../themes/

# Delete temp themes.
rm -rf output