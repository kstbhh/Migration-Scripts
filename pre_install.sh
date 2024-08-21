#!/usr/bin/env bash

# Root-User check
if [ ! "${whoami}" = "root" ]; then
    cecho r "Please run this script as root user"
    exit 1
fi

rm -rf /migrate
mkdir -p /migrate
git clone https://kstbhh:token@github.com/MediaboxMigration/migrate /migrate && cd /migrate || exit