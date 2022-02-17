class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDnSRwPnVFwIP+HdouwvgikMWq+GF2hQIy0RpLGwEVH4ycZKWN29dBVIRZ3ViNkgFFRqBPre0b9xYKr8K8pof/Ozk6qmjUE98wsXbtCiyxMjXsd0M0CAtaIqHEfwDWGiQXJMlgcqQAsDGJDuHZmuN1MxH6WRJhKLXFLMlydFTkWni4Km2FucSu1cqy3dG4MbvLwXdJA2t7gL2W+JkO6jFKXP2UIO9BZFlUgz9+Y5ppy+CIigZy3+sGbPdG3xKdc2ht7Vflt5OB6ap4Jmdpajs81R5DpCyACbYhb5NLhmu8e/xu9TcOUn1fOIITj9aL8W4Imk1VLap2lCvO34fT5rwEr',
  }  
}
