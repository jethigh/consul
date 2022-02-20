node_name = "consul-client-2"
datacenter = "dc1"
data_dir   = "/consul/data"
log_level  = "INFO"
retry_join = ["consul-server-1", "consul-server-2", "consul-server-3"]
bind_addr = "{{ GetInterfaceIP \"eth*\" }}"
encrypt = "lamcga6Pndh0YjyZSaGfhnVQVVWuyuo3s1yULoa5O8c="
verify_incoming = true
verify_outgoing = true
verify_server_hostname = true
ca_file = "/consul/config/consul-agent-ca.pem"
auto_encrypt = {
  tls = true
}
