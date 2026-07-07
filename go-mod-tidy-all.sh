#!/bin/bash -e
for i in $(find . -name go.mod); do
    echo $i
    pushd ${i%go.mod} && go get golang.org/x/image@latest && go mod tidy && popd
done
