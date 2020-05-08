#!/bin/bash

[[ $# == 5 ]] || exit 1

{ curl -u ${GITHUB} -d @- https://api.github.com/repos/${1}/pulls <<EOF 
{
    "title": "${4}",
    "body": "${5}",
    "head": "${3}",
    "base": "${2}"
}
EOF
} | jq ._links.html.href -r 
