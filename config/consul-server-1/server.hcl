node_name = "consul-server-1"
server    = true
bootstrap_expect = 3
ui_config {
  enabled = true
}
datacenter = "dc1"
data_dir   = "/consul/data"
log_level  = "INFO"
client_addr = "0.0.0.0"
bind_addr = "{{ GetInterfaceIP \"eth*\" }}"
retry_join = ["consul-server-2", "consul-server-3"]

encrypt = "lamcga6Pndh0YjyZSaGfhnVQVVWuyuo3s1yULoa5O8c="
verify_incoming = true
verify_outgoing = true
verify_server_hostname = true
ca_file = "/consul/config/consul-agent-ca.pem"
cert_file = "/consul/config/dc1-server-consul-1.pem"
key_file = "/consul/config/dc1-server-consul-1-key.pem"
auto_encrypt {
  allow_tls = true
}

