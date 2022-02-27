#!/bin/bash

set -ex

rm -f ./images/*.eps
mkdir -p ./images/

qrencode \
  --size 6 \
  --level h \
  -o "./images/flood-in-franklin-park.eps" \
  "https://www.youtube.com/watch?v=cQ4K1hMtRFA"
