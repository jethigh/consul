node_name = "consul-client-1"
datacenter = "dc1"
data_dir   = "/consul/data"
log_level  = "INFO"
retry_join = ["consul-server-1", "consul-server-2", "consul-server-3"]
bind_addr = "{{ GetInterfaceIP \"eth*\" }}"
