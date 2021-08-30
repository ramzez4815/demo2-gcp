Kubernetes Manifest Files

# Usage

- `kubectl apply -f XXXX.yaml`  to create/update resource.
- `kubectl delete all --all`  to delete all resources.

### Deploy order

- kubectl apply -f secret.yaml
- kubectl apply -f ghost.yaml
- kubectl apply -f ghost-svc.yaml
- kubectl apply -f cloudsql_proxy.yaml
- kubectl apply -f cloudsql_svc.yaml
- kubectl apply -f cloud_cronjob.yaml