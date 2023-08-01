#!/bin/bash

function main () {
    echo "hello $1"
}

out=$(main "$@")
echo "$out $?"
