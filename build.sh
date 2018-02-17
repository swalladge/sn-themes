#!/bin/bash

# build the packages and put in dist/ ready to drop into your webroot

rm -rf dist
mkdir dist

package_name="better-solarized-dark"
mkdir dist/${package_name}/
cd ${package_name}/
zip -r ../dist/${package_name}/package.zip *
cp package.json ../dist/${package_name}/
