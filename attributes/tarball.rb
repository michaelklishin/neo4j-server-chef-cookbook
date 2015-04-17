default[:neo4j][:server][:version]           = '2.2.1'
default[:neo4j][:server][:edition]           = 'community'
default[:neo4j][:server][:tarball][:url]     = "http://dist.neo4j.org/neo4j-#{node[:neo4j][:server][:edition]}-#{node[:neo4j][:server][:version]}-unix.tar.gz"

default[:neo4j][:server][:jvm][:xms]         =  32
default[:neo4j][:server][:jvm][:xmx]         = 512
default[:neo4j][:server][:limits][:memlock]  = 'unlimited'
default[:neo4j][:server][:limits][:nofile]   = 48000

default[:neo4j][:server][:user]              = 'neo4j'

default[:neo4j][:server][:name]              = 'neo4j-server'

default[:neo4j][:server][:installation_dir]  = "/usr/local/#{node[:neo4j][:server][:name]}"
default[:neo4j][:server][:run_dir]           = '/var/run'
default[:neo4j][:server][:lib_dir]           = "/var/lib/#{node[:neo4j][:server][:name]}"
default[:neo4j][:server][:data_dir]          = "#{node[:neo4j][:server][:lib_dir]}/data/graph.db"
default[:neo4j][:server][:conf_dir]          = "#{node[:neo4j][:server][:installation_dir]}/conf"
default[:neo4j][:server][:lock_path]         = "#{node[:neo4j][:server][:run_dir]}/#{node[:neo4j][:server][:name]}.lock"
default[:neo4j][:server][:pid_path]          = "#{node[:neo4j][:server][:run_dir]}/#{node[:neo4j][:server][:name]}.pid"

default[:neo4j][:server][:enabled]           = true

default[:neo4j][:server][:host]              = '0.0.0.0'

default[:neo4j][:server][:http][:enabled]    = true
default[:neo4j][:server][:http][:port]       = 7474

default[:neo4j][:server][:https][:enabled]        = true
default[:neo4j][:server][:https][:port]           = 7473
default[:neo4j][:server][:https][:cert_location]  = 'conf/ssl/snakeoil.cert'
default[:neo4j][:server][:https][:key_location]   = 'conf/ssl/snakeoil.key'

default[:neo4j][:server][:plugins][:spatial][:enabled]  = true
default[:neo4j][:server][:plugins][:spatial][:version]  = '0.9-SNAPSHOT'
default[:neo4j][:server][:plugins][:spatial][:url]      = "https://github.com/downloads/goodwink/neo4j-server-chef-cookbook/neo4j-spatial-#{node[:neo4j][:server][:plugins][:spatial][:version]}-server-plugin.zip"

default[:neo4j][:server][:node_auto_indexing][:enabled]         = false
default[:neo4j][:server][:node_auto_indexing][:keys_indexable]  = ''

default[:neo4j][:server][:remote_shell][:port] = 1337

# Enterprise attributes
default[:neo4j][:server][:ha][:enabled] = false
default[:neo4j][:server][:ha][:server_id] = "1"
default[:neo4j][:server][:ha][:initial_hosts] = nil

