#!/bin/bash

cd /home/runner/work/EPG-Rodri/EPG-Rodri/iptv-org-epg && npm install


# Meo EPG

npm run grab -- --site=meo.pt --output=../EPG/epg-meo-pt.xml --days=7

# Orange EPG

npm run grab -- --site=orange.fr --output=../EPG/epg-orange-fr.xml --days=7

# Elisa Viihde EPG

npm run grab -- --site=elisaviihde.fi --output=../EPG/epg-elizaviihde-fi.xml --days=7

# Mi.tv EPG

npm run grab -- --channels=sites/mi.tv/mi.tv_br.channels.xml --output=../EPG/epg-mitv-br.xml --days=7

# Vodafone (DE) EPG

npm run grab -- --site=vodafone.de --output=../EPG/epg-vodafone-de.xml --days=7

cd ../EPG

# Compress EPG xml files

xz -k -f -9 epg*.xml && gzip -k -f -9 epg*.xml

# Remove EPG xml files

rm epg*.xml

exit 0
