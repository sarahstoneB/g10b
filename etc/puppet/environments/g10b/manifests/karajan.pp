node 'karajan' {
  class {'g10b':}
  class {'g10b::ssh':}
  #class {'g10b::rundeck':}
  class {'g10b::mesos_master':}
  class {'g10b::jenkins':}
  class {'g10b::docker':}

  class {'::maven':}

  if !defined(Class['::java']) {
    class {'::java':
      distribution => 'jdk',
    }
  }
  
}