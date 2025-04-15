#!/usr/bin/env python3
import json
import subprocess
from pathlib import Path

inventory_file = Path("../inventories/aws/hosts.yml")

# Run terraform output -json
result = subprocess.run(["terraform", "output", "-json"], capture_output=True, text=True)
outputs = json.loads(result.stdout)

# Extract data
idm_ip = outputs["idm_host"]["value"]
keycloak_ip = outputs["keycloak_host"]["value"]
client_ips = outputs["instance_ips"]["value"]

# Write Ansible inventory
inventory = {
    "all": {
        "hosts": {},
        "children": {
            "idm": {"hosts": {idm_ip: None}},
            "keycloak": {"hosts": {keycloak_ip: None}},
            "clients": {"hosts": {ip: None for ip in client_ips if ip not in [idm_ip, keycloak_ip]}},
        },
    }
}

with inventory_file.open("w") as f:
    yaml = __import__("yaml")
    yaml.dump(inventory, f)

print(f"Inventory written to {inventory_file}")

