class search {

  service { 'iptables':
    enable => false,
    ensure => stopped,
  }

  class { 'elasticsearch':
    package_url => 'https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.11.noarch.rpm',
    java_install => true,
    config => {
      'cluster' => {
        'name' => 'test-es-cluster01'
      },
      'network.host' => '_eth1:ipv4_',
      'marvel.agent.exporter.es.hosts' => ['192.168.10.114:9200','192.168.10.115:9200']
    }
  }

  elasticsearch::plugin{'elasticsearch/marvel/latest':
    module_dir => 'marvel'
  }

  elasticsearch::plugin{'mobz/elasticsearch-head':
    module_dir => 'head'
  }

  elasticsearch::plugin{'royrusso/elasticsearch-HQ':
    module_dir => 'HQ'
  }
}
