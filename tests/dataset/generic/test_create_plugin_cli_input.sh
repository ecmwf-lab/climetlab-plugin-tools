#!/bin/bash -ue

NAME=climetlab-dataset-plugin

export CLIMETLAB_DEBUG=1
export CLIMETLAB_PLUGIN_TOOLS_NO_GUESS=1

rm -rf $NAME.ref/.pytest_cache $NAME.ref/build $NAME.ref/*.egg-info $NAME.ref/tests/__pycache__

rm -rf  $NAME
climetlab plugin_create_dataset --name dataset-plugin --dataset rain-observations   < input_test_dataset_cli_input.txt | tee test_dataset_cli_input.stdout
diff -r $NAME $NAME.ref
rm -rf  $NAME
