#!/bin/bash

if [ ! -d "ssl" ]; then
    mkdir ssl
fi

if [ ! -d "ssl/pages.fisgeo.unipg.it" ]; then
    mkdir ssl/pages.fisgeo.unipg.it
fi

if [ ! -f "ssl/pages.fisgeo.unipg.it/fullchain.pem" ]; then
	cp -a $HOME/ssl/pages.fisgeo.unipg.it/fullchain.pem ssl/pages.fisgeo.unipg.it/fullchain.pem || exit 0
fi

if [ ! -f "ssl/pages.fisgeo.unipg.it/privkey.pem" ]; then
	cp -a $HOME/ssl/pages.fisgeo.unipg.it/privkey.pem ssl/pages.fisgeo.unipg.it/privkey.pem || exit 0
fi