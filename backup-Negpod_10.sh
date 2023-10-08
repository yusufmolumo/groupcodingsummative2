#!/bin/bash

# Your Negpod ID
NEGPOD_ID="Negpod_10"

# Source directory to be backed up
SRC_DIR="negpod_10-q1"

# Remote server details
REMOTE_HOST="2f05c1f8800b.3be8ebfc.alu-cod.online"
REMOTE_USER="2f05c1f8800b"
REMOTE_PASSWORD="d4a1d225d0abda9549d8"
REMOTE_DEST="/summative/0923-2023S/${NEGPOD_ID}"

# Use rsync with sshpass to provide the password
sshpass -p "${REMOTE_PASSWORD}" rsync -avz -e "ssh -o StrictHostKeyChecking=no" "${SRC_DIR}" "${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DEST}"

echo "Backup completed to ${REMOTE_HOST}:${REMOTE_DEST}"
