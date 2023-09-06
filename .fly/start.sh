#!/bin/sh

set -ex

if [ -n $MIGRATE_ON_BOOT ]; then
  $(dirname $0)/migrate.sh
fi

npx rw-server api & node ./node_modules/.bin/rw-serve-fe --port ${PORT}
# yarn rw serve --port ${PORT} $@
