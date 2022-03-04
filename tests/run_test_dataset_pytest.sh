#!/bin/bash -ue

NAME=climetlab-dataset-plugin

export CLIMETLAB_DEBUG=1

pip install --quiet ./$NAME.ref

cd ./$NAME.ref/tests
pytest

pip uninstall $NAME -y
cd -
rm -rf $NAME.ref/.pytest_cache $NAME.ref/build $NAME.ref/*.egg-info $NAME.ref/tests/__pycache__
