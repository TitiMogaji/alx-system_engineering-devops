# after a rigorous search, trace revealed that a file with extention phpp does not exist
# that is an error in some cconfiguration we need to correcct here

exec { 'change wp-locale extension':
    command  => 'sed  -i  s/phpp/php/g /var/www/html/wp-settings.php',
    provider => shell,
}
