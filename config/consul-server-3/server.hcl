node_name = "consul-server-3"
server    = true
bootstrap_expect = 3
datacenter = "dc1"
data_dir   = "/consul/data"
log_level  = "INFO"
client_addr = "0.0.0.0"
bind_addr = "{{ GetInterfaceIP \"eth*\" }}"
retry_join = ["consul-server-1", "consul-server-2"]

encrypt = "lamcga6Pndh0YjyZSaGfhnVQVVWuyuo3s1yULoa5O8c="
verify_incoming = true
verify_outgoing = true
verify_server_hostname = true
ca_file = "/consul/config/consul-agent-ca.pem"
cert_file = "/consul/config/dc1-server-consul-3.pem"
key_file = "/consul/config/dc1-server-consul-3-key.pem"
auto_encrypt {
  allow_tls = true
}