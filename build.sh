#!/bin/sh

set -e

(
    cd "$(dirname $(readlink -f "$0"))"
    rm -f hpass.xpi
    zip -q1r -FS hpass.xpi * --exclude '*.git*' --exclude '*.xpi' --exclude '*.sh'
    echo "Done."
)