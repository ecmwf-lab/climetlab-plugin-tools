#!/bin/bash -ue

NAME=climetlab-dataset-plugin

export CLIMETLAB_DEBUG=1

rm -rf $NAME.ref/.pytest_cache $NAME.ref/build $NAME.ref/*.egg-info $NAME.ref/tests/__pycache__

rm -rf  $NAME
climetlab plugin_create_dataset --name dataset-plugin --dataset the-dataset   < input_test_dataset_1.txt | tee test_dataset_1.stdout
diff -r $NAME $NAME.ref

rm -rf  $NAME
climetlab plugin_create_dataset  < input_test_dataset_2.txt | tee test_dataset_2.stdout
diff -r $NAME $NAME.ref
rm -rf  $NAME
