class g10b::cron {

  cron { 'puppet-agent':
    command  => '/usr/bin/puppet agent --onetime --no-daemonize --splay',
    user     => 'root',
    month    => '*',
    monthday => '*',
    hour     => '*',
    minute   => '*/15',
  }

  package { 'logrotate':
    ensure => installed,
  }
  ->
  cron { 'logrotate':
    command  => '/usr/sbin/logrotate',
    user     => 'root',
    month    => '*',
    monthday => '*',
    hour     => '*/2',
    minute   => '0',
  }

}
