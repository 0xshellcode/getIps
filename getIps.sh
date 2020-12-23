#!/bin/bash

while read p; do
    echo $p:$(host $p | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}') &
done < $1
