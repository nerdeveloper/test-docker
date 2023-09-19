#!/bin/sh

# Synchronize files
rsync -av --delete /app/repo/ /host_mount/

# Run the Flask server
php -S 0.0.0.0:8081 -t /app/repo/triggr
