#!/bin/bash

parent_name="pandora"
module_name="geth"

docker build \
-t "${parent_name}/${module_name}" \
.