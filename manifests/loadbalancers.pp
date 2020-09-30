node 'node4' {
    include ::haproxy
    haproxy::listen {'lb-01':
       ports            => '80',
       ipaddress        => $::ipaddress,
       collect_exported => false,
      }
    haproxy::balancermember { 'node1':
        listening_service => 'lb-01',
        ports             => '8080',
        server_names      => ['node1'],
        ipaddresses       => ['172.18.0.5'],
        options           => 'check',
     }
    
    
    haproxy::balancermember { 'node2':
       listening_service => 'lb-01',
       port              => '8080',
       server_names      => ['node2'],
       ipaddresses       => ['172.18.0.2'],
       options           => 'check',
     }
}