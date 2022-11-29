#testing how well our web server setup featuring Nginx is doing under pressure
#HTTP requests to a web server
exec { 'more nginx server':
  command => "/bin/echo ULIMIT='-n 4080' | sudo tee /etc/default/nginx && sudo service nginx restart"
}
