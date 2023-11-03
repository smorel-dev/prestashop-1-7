Server configuration
--------

To install the latest PrestaShop 1.7, you need a web server running PHP 7.1+ and any flavor of MySQL 5.0+ (MySQL, MariaDB, Percona Server, etc.). Versions between 1.7.0 and 1.7.6 work with PHP 5.6+.

You will also need a database administration tool, such as phpMyAdmin, in order to create a database for PrestaShop.
We recommend the Apache or Nginx web servers (check out our [example Nginx configuration file][example-nginx]).

You can find more information on our [System requirements][system-requirements] page and on the [System Administrator Guide][sysadmin-guide].

Docker compose
--------

PrestaShop can also be deployed with Docker and its tool [Docker compose][docker-compose].

To run the software, use:

```
docker-compose up
```

Then reach your shop on this URL: http://localhost:8001

Docker will bind your port 8001 to the web server. If you want to use other port, open and modify the file `docker-compose.yml`.
MySQL credentials can also be found and modified in this file if needed.

**Note:**  Before auto-installing PrestaShop, this container checks the file *config/settings.inc.php* does not exist on startup.
If you expect the container to (re)install your shop, remove this file if it exists. And make sure the container user `www-data` 
has write access to the whole workspace.

