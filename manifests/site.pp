node 'slave.example.com' {
  file{'info1.txt' :
    path => '/tmp/info.txt',
    ensure => 'present',
    content => "new1 file to be created \n"
    }
  notify{'This is master envirnment' :
    }
  package{'httpd':
    ensure => 'present'
    }
  service{'httpd':
    ensure => 'running'
    }
}
