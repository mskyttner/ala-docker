#!/bin/bash
docker run --rm --network=basnet -v beta_data_nameindex:/data/lucene/namematching -v beta_data_biocachebackend:/data --mount type=bind,source="$(pwd)"/config/blacklistMediaUrls.txt,target=/data/biocache/config/blacklistMediaUrls.txt --mount type=bind,source="$(pwd)"/config/biocache-config.properties,target=/data/biocache/config/biocache-config.properties  -e BIOCACHE_MEMORY_OPTS="-Xmx16g -Xms1g" -it bioatlas/ala-biocachebackend:v0.8 ash
