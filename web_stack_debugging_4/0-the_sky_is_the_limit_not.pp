#testing how well our web server setup featuring Nginx is doing under pressure
#HTTP requests to a web server
user { 'kuukua':
  ensure     => present,
  uid        => '1000',
  gid        => '1000',
  shell      => '/bin/bash',
  home       => '/home/kuukua'
}
