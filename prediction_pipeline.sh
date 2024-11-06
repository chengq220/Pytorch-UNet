#!/bin/bash

for file in data/test/*; do
    if [[ "$file" == *.png ]]; then
        filename=${file##*/}
        python predict.py -m "./checkpoints/MODEL.pth" -i "./$file" -o "data/test_output/$filename"
    fi
done