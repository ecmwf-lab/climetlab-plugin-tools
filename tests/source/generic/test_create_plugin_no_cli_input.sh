#!/bin/bash -ue

NAME=climetlab-newsource

export CLIMETLAB_DEBUG=1
export CLIMETLAB_PLUGIN_TOOLS_NO_GUESS=1

rm -rf $NAME.ref/.pytest_cache $NAME.ref/build $NAME.ref/*.egg-info $NAME.ref/tests/__pycache__

rm -rf  $NAME
climetlab plugin_create_source  < input_test_no_cli_input.txt | tee test_no_cli_input.stdout
diff -r $NAME $NAME.ref
rm -rf  $NAME
