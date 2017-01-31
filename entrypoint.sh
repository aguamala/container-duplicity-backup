#!/bin/bash

#Exit immediately if a pipeline exits  with a non-zero status
set -e

if [[ ! -e /duplicity-backup.conf ]]; then
    cat /duplicity-backup.conf.sample > /duplicity-backup.conf

    
fi

exec "$@"
