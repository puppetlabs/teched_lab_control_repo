# Role

This is the Role site module. Use this module to add roles for classifying nodes in your Puppet infrastructure.

## Usage

To specify a role for a node, include the `pp_role` extension in the node's CSR:

```
#!/bin/sh
if [ ! -d /etc/puppetlabs/puppet ]; then
   mkdir /etc/puppetlabs/puppet
fi
cat > /etc/puppetlabs/puppet/csr_attributes.yaml << YAML
extension_requests:
    pp_role: database_server
    pp_environment: production
YAML
```