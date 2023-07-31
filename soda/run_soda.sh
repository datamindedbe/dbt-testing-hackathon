#!/usr/bin/env bash

set -ex

# Handle paths relative to the script location
if [[ ${BASH_SOURCE} = */* ]]; then
    cd -- "${BASH_SOURCE%/*}/" || exit
fi


CONNECTION=${CONNECTION:-'local'}
soda test-connection -d $CONNECTION -c configuration.yml
soda scan -d $CONNECTION -c configuration.yml checks.yml
