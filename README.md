# Consul

Simple docker Consul config with three server and clients.  
In docker-compose.yml `-node`  command line option are added to consul image, otherwise consul goint to be run in development node.
Rest of Consul configuration are in `config/<node-name>/` directories.

# Requirements
  
`Docker`and `docker-compose` are required to run this Consul configuration.

# Running

Clone this project, enter consul directory and execute:
> docker-compose up -d

# Description

`config/<container_name>` directory are mounted at `/consul/config` in Consul container and contain config files.   
`data/<container_name>` directory are mounted at `/consul/data/` in container and contain cluster data

You can add additional nodes in docker-compose.yml file.

# Commands

`consul members` - list Consul cluster members  
`consul tls ca create` - generate CA certificate  
`consul tls cert create -server -days=730` - generate server key and certificate

