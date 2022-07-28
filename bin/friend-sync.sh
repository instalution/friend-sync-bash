#!/usr/bin/env bash

SYNC_ACCOUNTS="${BASH_SOURCE%/*}/../sync-accounts.json"

for SYNC_ACCOUNT in $(cat "${SYNC_ACCOUNTS}" | jq -c '.[]'); do
	INSTANCE=$(echo "${SYNC_ACCOUNT}" | jq -cr '.instance')
	ACCOUNT=$(echo "${SYNC_ACCOUNT}" | jq -cr '.account')
	MEDIA_FILES=$(curl -v "${INSTANCE}/api/files?account=${ACCOUNT}&sort=filename&page=1&perPage=36" | jq -cr '.data[]')
	echo "$MEDIA_FILES" |
		while IFS= read -r line; do
			echo "${INSTANCE}${line}"
		done
done
