#fix apache 500 error using puppet code
exec { 'change':
    command  => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
    provider => shell,
}
