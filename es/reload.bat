curl -XDELETE http://localhost:9200/prefixcommons 
curl -XPUT http://localhost:9200/prefixcommons -d  @mappings.json
cp ..\..\data-ingest\json\lsregistry.json .
curl -XPUT http://localhost:9200/_bulk?pretty --data-binary @lsregistry.json > load.log
