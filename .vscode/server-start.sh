#!/bin/sh
set -eu
root=$PWD
while [ "$root" != / ] && [ ! -f "$root/scripts/server.sh" ]; do root=$(dirname "$root"); done
[ -f "$root/scripts/server.sh" ] || { echo 'DevSpace root not found' >&2; exit 1; }
exec sh "$root/scripts/server.sh"
