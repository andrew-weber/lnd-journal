#!/bin/bash
echo here
dat=$(date +'%m.%d.%y-%H:%M:%S')

# promote to active
shopt -s extglob
cp -r ./draft/!(*.example.*) -t ./active/
sed -i "1s|^|# ${dat} \n|" ./active/plan.md

# save in archive
mkdir ./archive/${dat}
cp -r ./draft/!(*.example.*) ./archive/${dat}