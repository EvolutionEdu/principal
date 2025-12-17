#!/bin/bash
set -e

ENV_FILE=".env"

cat > "$ENV_FILE" <<EOF
JWT_SECRET=$(openssl rand -hex 64)
EOF

chmod 600 "$ENV_FILE"
rm -- "$0"
