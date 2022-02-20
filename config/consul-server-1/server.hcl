node_name = "consul-server-1"
server    = true
bootstrap_expect = 1
ui_config {
  enabled = true
}
datacenter = "dc1"
data_dir   = "/consul/data"
log_level  = "INFO"
client_addr = "0.0.0.0"
bind_addr = "{{ GetInterfaceIP \"eth*\" }}"
retry_join = ["consul-server-1", "consul-server-2", "consul-server-3"]
encrypt = "lamcga6Pndh0YjyZSaGfhnVQVVWuyuo3s1yULoa5O8c="
