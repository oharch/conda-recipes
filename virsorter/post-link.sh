#!/usr/bin/env bash
cat <<EOF >> ${PREFIX}/.messages.txt
Please run download-virsorter-db.sh to download the database to ${PREFIX}/share/${PKG_NAME}-${PKG_VERSION}/db/
EOF