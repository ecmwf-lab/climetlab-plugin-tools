#!/bin/bash -ue

for i in */test_*.sh; do
    cd $(dirname $i)
    bash -eu $(basename $i)
    cd -
done
echo "Tests successfull."
