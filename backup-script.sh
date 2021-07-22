#!/bin/bash

mysqldump --user=${DB_USER} --password=${DB_PASS} -h "${DB_HOST}" "${DB_NAME}" --lock-tables=false > "${DB_NAME}"-$(date +%d-%m-%Y).sql
gzip "${DB_NAME}"-$(date +%d-%m-%Y).sql
gsutil cp "${DB_NAME}"-$(date +%d-%m-%Y).sql.gz gs://${GS_BUCKET}