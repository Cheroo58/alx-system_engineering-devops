#!/usr/bin/env bash
# Using Puppet to make changes to our configuration file
# so that one can connect to a server without typing a password

file { '/etc/ssh/ssh_config':
  ensure  => present,
content => "
    #SSH client configuration
    Host *
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
  ",
}
