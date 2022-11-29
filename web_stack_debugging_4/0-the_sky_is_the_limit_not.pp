#testing how well our web server setup featuring Nginx is doing under pressure
#HTTP requests to a web server
exec { 'Fix NGINX Failed Requests':
  command => "/bin/echo ULIMIT='-n 5000' | sudo tee /etc/default/nginx && sudo service nginx restart"
}
