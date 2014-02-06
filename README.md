# simple setup for creating elasticsearch cluster on VMs.

## installation

`make install`

## confirmation

```
-> % curl http://192.168.10.114:9200
{
  "ok" : true,
  "status" : 200,
  "name" : "Araki",
  "version" : {
    "number" : "0.90.11",
    "build_hash" : "11da1bacf39cec400fd97581668acb2c5450516c",
    "build_timestamp" : "2014-02-03T15:27:39Z",
    "build_snapshot" : false,
    "lucene_version" : "4.6"
  },
  "tagline" : "You Know, for Search"
}
```

## tools

* http://192.168.10.114:9200/_plugin/HQ/
* http://192.168.10.114:9200/_plugin/head/
* http://192.168.10.114:9200/_plugin/marvel

see (note: Japanese only): http://suzuken.hatenablog.jp/entry/2014/02/05/232543
