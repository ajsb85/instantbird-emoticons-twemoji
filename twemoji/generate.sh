#!/bin/bash

for FILE in $(ls -1 svg/*); do

    DIR="$(echo ${FILE} | awk -F/ '{print $1}')"
    SVG="$(echo ${FILE} | awk -F/ '{print $2}')"
    PNG="$(echo ${SVG} | awk -F. '{print $1}').png"

    convert -background None "${DIR}/${SVG}" "${PNG}"
done
