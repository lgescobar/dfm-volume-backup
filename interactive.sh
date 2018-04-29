#!/bin/bash

# -v /Users/lgescobar/volume-backup:/backup \
# -v ~/volume-backup:/backup \
docker run --rm -it \
  -v /var/lib/docker:/docker \
  alpine sh
