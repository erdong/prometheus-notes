#!/bin/bash
gitbook build
rm -rf docs
echo "del docs"
mv _book docs
echo "add docs"
