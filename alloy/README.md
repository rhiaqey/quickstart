# Grafana Alloy

```sh
docker run \
    -it --rm \
    -v ${PWD}/alloy/config.alloy:/etc/alloy/config.alloy \
    -p 12345:12345 \
    --network host \
    grafana/alloy:v1.3.1 \
        run --server.http.listen-addr=0.0.0.0:12345 --storage.path=/var/lib/alloy/data \
        /etc/alloy/config.alloy
```
