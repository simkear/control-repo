node 'node1'{
  include base
  class {'::tomcat':
    xms           => '64m',
    xmx           => '128m',
    user          => 'root',
    group         => 'tomcat',
    service_state => 'running'
   }
   tomcat::deploy {'sysfoo':
     deploy_url     => 'https://github.com/simkear/sysfoo/raw/master/sysfoo.war',
     checksum_value => '51f44e3d222b4dbb65ceb5647c9b8184',
    }
 }



node 'default'{
  notify {"*****DEFAULT******":
    message => 'Check point_1'}
}
node 'node2' {
  class {'::tomcat':
    xms           => '64m',
    xmx           => '256m',
    user          => 'tomcat',
    group         => 'tomcat',
    service_state => 'running'
   }
  include base
}
