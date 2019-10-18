#!/bin/bash
rm -rf docs
echo "del docs"
gitbook build
mv _book docs
echo "add docs"
