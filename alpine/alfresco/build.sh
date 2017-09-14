#!/usr/bin/env bash

versions=("1.1.0")

for version in ${versions[@]}
do
        echo "Building verion : $version"
        docker build -t rameshr/chemistry-opencmis-server-inmemory:$version .
        #docker push rameshr/chemistry-opencmis-server-inmemory:$version
done

echo "Docker build done."