# hashitalks-2023oac
Observability as Code (OaC)

# Prereq 
In this steps will install in docker cadvisor and prometheus, these are an optional steps

## Install cadvisor
```bash
docker run \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:ro \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --volume=/dev/disk/:/dev/disk:ro \
  --publish=8080:8080 \
  --detach=true \
  --name=cadvisor \
  --privileged \
  --device=/dev/kmsg \
  gcr.io/cadvisor/cadvisor:latest
```
### Access to cadvisor 
http://localhost:8080
http://localhost:8080/metrics

## Prometheus 
```bash
docker run --name prometheus -d -p 9090:9090 -v $(pwd)/prometheus-conf.yaml:/etc/prometheus/prometheus.yml prom/prometheus
```

### Prometheus access
http://localhost:9090
http://localhost:9090/targets


# Prereq Install grafana
```bash
docker run -p 3000:3000 --name=grafana \
    -e "GF_INSTALL_PLUGINS=grafana-clock-panel, grafana-simple-json-datasource" \
    -e "GF_SECURITY_ADMIN_PASSWORD=password" \
    -e "GF_USERS_ALLOW_SIGN_UP=false" \
    --rm \
    grafana/grafana-oss
```

# DEMO

## Connect terraform to grafana
```bash
export TF_VAR_grafana_auth=admin:password
```
- Create an organization 
```bash
terraform apply --target=grafana_organization.my_org
```
- Add to grafana new Prometheus Data-source
```bash
terraform apply --target grafana_data_source.prometheus
```

- Add to grafana new Folder
```bash
terraform apply --target grafana_folder.oac_folder
```

- Add to grafana new Dashboard
```bash
terraform apply --target grafana_dashboard.oac_dashboard
```

- Documentation ./DOCUMENTATION.md
