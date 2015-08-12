#!/bin/bash

for SVG in $(ls -1 svg/*); do

    PNG="twemoji/$(echo ${SVG} | awk -F/ '{print $2}' | awk -F. '{print $1}').png"

    echo "${SVG} > ${PNG}"
    convert -size 25x25 -background None "${SVG}" "${PNG}"
done
