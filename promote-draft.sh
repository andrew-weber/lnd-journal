#!/bin/bash
echo here

dat=$(date +'%m.%d.%y-%H:%M:%S')

# promote to active
cp -r ./draft/* -t ./active/
sed -i "1s|^|# ${dat} \n|" ./active/plan.md

# save in archive
cp -r ./draft/ ./archive/${dat}