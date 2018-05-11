# About
A docker setup for running and debugging Drupal locally.

## Stack
  - Apache
  - MariaDB
  - PHP 7.2
  - Xdeug

# Setup
  - Add project files to /app directory
  - run `docker-compose up -d` from root directory
  - visit `localhost:8100`

# Access services

## Connect to database externally
  - host `127.0.0.1`
  - user `drupal`
  - pass `meh`
  - database `drupal`
  - port `9906`

## Connect to database from Drupal
  - host `database`
  - user `drupal`
  - pass `meh`
  - database `drupal`
  - port `3306`

# Connect PHPSTORM
## PHP  
_Settings > Languages & Frameworks > PHP_
  - Add CLI interpreter `From Docker, Vagrant..`
    - Choose `Docker`
    - Select `aprice42/drupalphp:latest`
    - Use autofilled values
    - `Apply` and `Save`

## Xdebug
_Settings > Languages & Frameworks > PHP > Debug_
  - Debug port `9000`
  - Can accept external connections `checked`
  - `Apply` and `Save`

## Servers
_Settings > Languages & Frameworks > PHP > Servers_
  - Add new configuration
  - name `localhost`
  - host `localhost`
  - port `8100`
  - debugger `xdebug`
  - Use path mappings `checked`
  - path mapping for app directory `/var/www/html`
  - `Apply` and `Save`
