class jkd9machine::jdk9machineinstall {
  package { "curl":
    ensure => "installed"
  } ->
  package { "tar":
    ensure => "installed"
  } ->
  exec { "curl -O http://download.java.net/jdk9/archive/b71/binaries/jdk-9-ea-bin-b71-linux-x64-01_jul_2015.tar.gz?q=download/jdk9/archive/b71/binaries/jdk-9-ea-bin-b71-linux-x64-01_jul_2015.tar.gz":
    cwd     => "/tmp",
    creates => "/jdk-9-ea-bin-b71-linux-x64-01_jul_2015.tar.gz",
    path    => ["/usr/bin", "/usr/sbin"],
    timeout => 0,
    onlyif  => 'test ! -f /tmp/jdk-9-ea-bin-b71-linux-x64-01_jul_2015.tar.gz'
  } ->
  file { "/opt/jdk9":
    ensure => "directory",
  } ->
  exec { "tar zxf /tmp/jdk-9-ea-bin-b71-linux-x64-01_jul_2015.tar.gz -C /opt/jdk9 --strip-components=1":
    cwd     => "/opt/",
    path    => ["/usr/bin", "/usr/sbin", "/bin"],
    timeout => 0,
    onlyif  => 'test ! -d /optn/jdk-9-ea-bin-b71-linux-x64-01_jul_2015'
  }

}

node default{

  class { 'jkd9machine::jdk9machineinstall': }

}