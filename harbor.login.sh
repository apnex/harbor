#!/bin/bash

URL="${HARBORURL}/login"
curl -k -c "./harbor.cookies.txt" -D "./harbor.headers.txt" -X POST \
	--data-urlencode "principal=${HARBORUSER}" \
	--data-urlencode "password=${HARBORPASS}" \
"${URL}"
