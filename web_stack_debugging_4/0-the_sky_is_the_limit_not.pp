#testing how well our web server setup featuring Nginx is doing under pressure
#HTTP requests to a web server
exec { 'more nginx server':
    command  => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx',
    provider => shell,
}

exec { 'restart nginx':
    command  => 'sudo service nginx restart',
    provider => shell,
}
