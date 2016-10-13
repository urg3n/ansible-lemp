#!/bin/bash
cd /var/www/easyforms/app/components/analytics/enricher/GeoIP &&
wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.mmdb.gz &&
wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.mmdb.gz &&
gunzip *.gz
