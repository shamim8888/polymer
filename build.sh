#!/bin/bash
rm -rf dist
mkdir dist

VULCAN="../vulcanize/bin/vulcanize"

${VULCAN} --implicit-strip --exclude polymer-mini.html --exclude polymer-micro.html polymer.html > dist/polymer.html
${VULCAN} --implicit-strip --exclude polymer-micro.html polymer-mini.html > dist/polymer-mini.html
${VULCAN} polymer-micro.html > dist/polymer-micro.html