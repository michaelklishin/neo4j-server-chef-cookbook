name              "neo4j-server"
maintainer        'Michael Klishin'
maintainer_email  'michael@clojurewerkz.org'
license           'MIT'
description       'This cookbook provides Neo4J Server (Community and Enterprise editions)'
version           '1.1.0'
depends           'java'

recipe 'neo4j-server::tarball', 'Installs a Neo4j server'

%w{ ubuntu debian redhat centos scientific amazon oracle }.each do |os|
  supports os
end
