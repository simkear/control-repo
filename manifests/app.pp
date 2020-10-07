node 'node2'{
  class {'::tomcat':
    xms           => '64m',
    xmx           => '128m',
    user          => 'tomcat',
    group         => 'tomcat',
    service_state => 'running'
   }
   tomcat::deploy {'sysfoo':
     deploy_url     => 'https://github.com/simkear/sysfoo/raw/test/sysfoo.war',
     checksum_value => 'd82fa6790d85e545ddc869dbbef8bc57',
    }
 }
