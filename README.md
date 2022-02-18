# Consul

Simple docker Consul config with one server and two clients.  
All config parameters are passed to consul using commands in docker-compose.  

# Requirements
  
`Docker`and `docker-compose` are required to run this Consul configuration.

# Running

Clone this project, enter consul directory and execute:
> docker-compose up -d

# Description

`config/<container_name>` directory are mounted at `/consul/config` in Consul container and can contain custom config files.   
`data/<container_name>` directory are mounted at `/consul/data/` in container and containd cluster data

You can add additional nodes in docker-compose.yml file.
