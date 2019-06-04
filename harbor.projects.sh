#!/bin/bash

URL="${HARBORURL}/api/projects"
RESPONSE=$(curl -k -b "./harbor.cookies.txt" -X GET \
	-H "Content-Type: application/json" \
"$URL" 2>/dev/null)
printf "${RESPONSE}" | jq --tab .
