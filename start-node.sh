#!/bin/sh
docker run -dit --restart=unless-stopped \
	--name testnet-xxx \
	-v $PWD:/srv \
	-v $PWD/static-nodes.json:/srv/node/geth/static-nodes.json:ro \
	-w /srv \
	-p 30303:30303 \
	ethereum/client-go:stable \
	--networkid 1708 \
	--port 30303 \
	--datadir /srv/node \
	--unlock abcdef0123456789abcdef0123456789abcdef01 \
	--password password.txt \
	--gcmode archive \
	--syncmode full \
	--mine \
	--miner.etherbase abcdef0123456789abcdef0123456789abcdef01 \
	--nousb \
	--nodiscover
