curl -XDELETE http://localhost:9200/prefixcommons 
curl -XPUT http://localhost:9200/prefixcommons -d  @mappings.json
curl -XPUT http://localhost:9200/_bulk?pretty --data-binary @registry.json
