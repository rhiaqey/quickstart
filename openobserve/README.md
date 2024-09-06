# Open Observe

```sh
docker run -p 5080:5080 \
    -e ZO_ROOT_USER_EMAIL="root@example.com" \
    -e ZO_ROOT_USER_PASSWORD="Complexpass#123" \
    -e ZO_TELEMETRY=false \
    -e ZO_USAGE_REPORTING_ENABLED=false \
    --network host \
        openobserve/openobserve:v0.11.0
```
