# prefixcommons webapp
A web front end for prefixcommons using angular and elasticsearch


install elasticsearch 2.2

enable CORS by adding the following to config/elasticsearch.yml :

 http.cors.enabled: true

 http.cors.allow-origin: /https?:\/\/localhost(:[0-9]+)?/

restart the elasticsearch server.

delete any prior instance of the registry

 curl -XDELETE http://localhost:9200/prefixcommons

create a new instance of the registry

 curl -XPUT http://localhost:9200/prefixcommons -d  @mappings.json

load the registry contents

 curl -XPUT http://localhost:9200/_bulk?pretty --data-binary @registry.json

setup the webapp for apache

Alias /prefixcommons /path/to/webapp/html

<Directory /path/to/webapp/html>

  DirectoryIndex index.html

  Options -Indexes -FollowSymLinks -MultiViews

  AllowOverride All

  Require all granted

</Directory>
