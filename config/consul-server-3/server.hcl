node_name = "consul-server-3"
server    = true
bootstrap_expect = 3
datacenter = "dc1"
data_dir   = "/consul/data"
log_level  = "INFO"
client_addr = "0.0.0.0"
bind_addr = "{{ GetInterfaceIP \"eth*\" }}"
