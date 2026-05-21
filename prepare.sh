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

cd static-html-directory

git clone https://github.com/FisGeoUnipg/duranti.git
rm -rf duranti/Makefile
rm -rf duranti/README.md
rm -rf duranti/.git*

cd ..

find static-html-directory -type f -exec chmod 644 {} \;
find static-html-directory -type d -exec chmod 755 {} \;
