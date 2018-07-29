#!/bin/bash

parent_name="pandora"
short_parent_name="pandora"
module_name="geth"

data_geth_path="$PWD/data"

mkdir -p data

it=$1

if [ ${#it} == 0 ];
then
    it="-d"
fi

docker run $it --rm \
--name "${short_parent_name}_${module_name}_1" \
-v $data_geth_path:/root/.ethereum \
-p 8545:8545 \
-p 30303:30303 \
"${parent_name}/${module_name}"