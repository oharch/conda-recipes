#!/usr/bin/env bash
cat <<EOF >> ${CONDA_PREFIX}/.messages.txt
Please run download-virsorter-db.sh to download the database to ${CONDA_PREFIX}/share/${PKG_NAME}-${PKG_VERSION}/db/
EOF
