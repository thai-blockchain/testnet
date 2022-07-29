#!/bin/sh
docker run --rm -it -v $PWD:/srv -w /srv ethereum/client-go:stable --datadir /srv/node attach
