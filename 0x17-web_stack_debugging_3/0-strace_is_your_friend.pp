# Fixes Apache 500 error to 200 ok
# By editing the mistyped .phpp to php in the /var/www/html/wp-settings.php file

exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
