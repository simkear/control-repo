node 'node3' {
  class {'::tomcat':
    xms           => '64m',
    xmx           => '256m',
    user          => 'tomcat',
    group         => 'tomcat',
    service_state => 'running'
   }
   tomcat::deploy {'sysfoo':
     deploy_url     => 'https://github.com/simkear/sysfoo/raw/dev/sysfoo.war',
     checksum_value => 'be22100e628c8015f3fe4bdf4cf131e1',
    }
}

