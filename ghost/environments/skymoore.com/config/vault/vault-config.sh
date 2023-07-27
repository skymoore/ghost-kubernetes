#!/bin/bash

export VAULT_ADDR="https://vlt.rwx.dev"
export VAULT_TOKEN=""

vault policy write ghost - <<EOF
path "secrets/data/ghost" {
  capabilities = ["read", "list"]
}
EOF

vault write auth/sky-dev/role/ghost \
    bound_service_account_names=ghost \
    bound_service_account_namespaces=ghost \
    policies=ghost \
    ttl=24h

# vault secrets enable -version=2 -path=secrets kv

vault kv put secrets/ghost @secret.json
