#! /bin/bash

set -ex


if [[ $GOPATH == "" ]]; then
    GOPATH="~/go"
fi

for i in `cat ./go-tools`; do
    go get -u $i
done
