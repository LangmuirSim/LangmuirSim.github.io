#!/bin/bash
set -v
set -e
SDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd ${SDIR}
cd ..

mkdir -p _static
mkdir -p _templates
mkdir -p generated

declare -a stubs=(
    "about"
    "docs"
    "setup"
    "timing"
    "usage"
)

for stub in "${stubs[@]}"; do
    pandoc --from=gfm --to=rst ./markdown/${stub}.md > ./generated/${stub}.rst
    echo ${stub}
done
