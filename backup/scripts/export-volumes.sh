#!/bin/sh

# Loop over all volumes
for voldir in /docker/volumes/*/
do
  # Extract the volume name/hash
  dir=${voldir%/}
  vol=${dir##*/}

  # Compress all volumes individually
  tar cfz /backup/${vol}.tar.gz -C /docker/volumes $vol

  echo "Exported: ${vol}.tar.gz"
done
