#!/bin/bash

export VAULT_ADDR="https://vlt.rwx.dev"

vault policy write ghost - <<EOF
path "secrets/data/ghost" {
  capabilities = ["read", "list"]
}
EOF

vault write auth/k8s-rwxdev/role/ghost \
    bound_service_account_names=ghost \
    bound_service_account_namespaces=skymoore-com \
    policies=ghost \
    ttl=24h

# vault secrets enable -version=2 -path=secrets kv

vault kv put secrets/ghost @secret.json
