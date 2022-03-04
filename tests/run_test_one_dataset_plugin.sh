#!/bin/bash -ue

NAME=climetlab-one-dataset-plugin

export CLIMETLAB_DEBUG=1

rm -rf $NAME.ref/.pytest_cache $NAME.ref/build $NAME.ref/*.egg-info $NAME.ref/tests/__pycache__

rm -rf  $NAME
climetlab plugin_create_dataset  < input_test_dataset_3.txt | tee test_dataset_3.stdout
diff -r $NAME $NAME.ref
rm -rf  $NAME
