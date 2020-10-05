node 'node3' {
  class {'::tomcat':
    xms           => '64m',
    xmx           => '256m',
    user          => 'tomcat',
    group         => 'tomcat',
    service_state => 'running'
   }
}
