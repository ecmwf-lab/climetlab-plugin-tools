#!/bin/bash -ue

NAME=climetlab-dataset-plugin


rm -rf $NAME.ref/.pytest_cache $NAME.ref/build $NAME.ref/*.egg-info $NAME.ref/tests/__pycache__

rm -rf  $NAME
climetlab plugin_create_dataset  < input_test_dataset_for_doc.txt | tee test_dataset_for_doc.stdout
diff -r $NAME $NAME.ref
rm -rf  $NAME
