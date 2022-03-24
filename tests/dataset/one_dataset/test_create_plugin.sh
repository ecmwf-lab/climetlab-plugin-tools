#!/bin/bash -ue

NAME=climetlab-dataset-plugin
export CLIMETLAB_PLUGIN_TOOLS_NO_GUESS=1

export CLIMETLAB_DEBUG=1

rm -rf $NAME.ref/.pytest_cache $NAME.ref/build $NAME.ref/*.egg-info $NAME.ref/tests/__pycache__

rm -rf  $NAME
climetlab plugin_create_dataset  < input_test_dataset.txt | tee test_dataset.stdout
diff -r $NAME $NAME.ref
rm -rf  $NAME
