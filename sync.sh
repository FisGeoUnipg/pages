#!/bin/bash

mkdir -p ssl/pages.fisgeo.unipg.it

# Sync the SSL certificates from the update server to the local machine
scp root@sslupdater:/etc/letsencrypt/live/pages.fisgeo.unipg.it/fullchain.pem ssl/pages.fisgeo.unipg.it/fullchain.pem
scp root@sslupdater:/etc/letsencrypt/live/pages.fisgeo.unipg.it/privkey.pem ssl/pages.fisgeo.unipg.it/privkey.pem

# Sync the SSL certificates from the local machine to the GitHub self-hosted runner
rsync -av ssl/ ubuntu@githubac:ssl/
