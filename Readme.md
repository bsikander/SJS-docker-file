#### Build Image

```
docker build -t sjs:0.8 —build-arg BASE_DIR=./files —no-cache .
```

Note:
- You need to place the sjs jar file inside the `files` folder (sbt job-server-extras/assembly)
- You need to place the spark2.2.* tgz file inside `files` folder

#### Run Image

```
docker run -d -p 8090:8090 -e SPARK_MASTER=spark://docker.for.mac.localhost:7077 sjs:0.8
```
where `docker.for.mac.localhost` points to host machine IP.

#### Tagging of Image

```
docker tag sjs:0.8 bsikander/sjs:0.8
```

#### Push

```
docker push bsikander/sjs:0.8
```

#### Enter container

```
docker exec -it <cont-id> /bin/bash
```

#### Other info
- Logs are inside /var/log/jobserver/*
- DB is inside /var/log/jobserver/database/*
- Driver logs are in /var/log/jobserver/jobserver-*
- All files are copied in /usr/share/jobserver/*

#### Note:
This container can also run in cluster mode. In that case, the sjs jar file needs to be in HDFS or on each worker node. Some configurations might need a change.
