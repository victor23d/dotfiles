#! /bin/bash

set -ex


if [[ $GOPATH == "" ]]; then
    GOPATH="~/go"
fi

for i in `cat ./go-tools`; do
    go clean -v -i $i 2> /dev/null || true 
    if [[ -e $GOPATH/src/$i ]]; then
        echo "rm $GOPATH/src/$i"
        cd $GOPATH/src
        rm -rf $i
    elif [[ -e $GOPATH/pkg/$1 ]]; then
        echo "rm $GOPATH/pkg/$i"
        cd $GOPATH/pkg
        rm -rf $i
    fi
done

cd $GOPATH/src/golang.org/x/tools
git reset --hard
git clean -fd

