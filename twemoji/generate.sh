#!/bin/bash

for i in $(cat symbols.txt); do

    wget https://twemoji.maxcdn.com/svg/$i.svg

done
