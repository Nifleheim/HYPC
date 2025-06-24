# Technical Test

Tutorial:
1. install nginx-ingress controller from this link below and cert-manager first, then apply issuer file for ingress.  
2. if already runs well with external IP as Load Balancer, apply config yaml file as configmap directly in cluster and per environment staging/production namespace with this command then Application is ready to deploy to Staging with a single push.

### "kubectl create configmap configmap-heypico --from-file=config.yaml -n (environment)"



This is my Web application Repository using Docker, Kubernetes and Helm Chart for Deployment pod, service and ingress. Also example for configmap to directly apply into Cluster itself as Confidential Data. NGINX that I used is Nginx-ingress Controller. CI/CD Workflows include Test (PHP CodeSniffer), Build a docker image and auto-deploy by push commit to Staging and auto-deploy by tag to Production. 

IAC provisioning script using Terraform in Terraform Folder with Re-usable Module as dynamic provisioning.

Monitoring tools using Prometheus & Grafana with a simple deployment from link below. And here is my approach for alerting and identifying security flaws within the system, for example there is 2 kind of Attacks;

## 1. Brute Force Attack Detection, Attackers attempting to guess passwords through repeated login attempts.

How to identify?
- Graph showing failed login attempts over time & displaying source IPs with highest failure rates.

How to Alert?
- Notification Alert when threshold exceeded.

## 2. Unusual Resource Consumption, Attackers overwhelming system resources to cause denial of service.

How to identify?
- Request rate monitoring with spike detection.
- Network traffic analysis panels.

How to Alert?
- Notification Alert when have a High Request Rate in Business Hours (Time-based Thresholds).


Links:
- Nginx-Ingress Controller: https://kubernetes.github.io/ingress-nginx/deploy
- Prometheus: https://artifacthub.io/packages/helm/prometheus-community/prometheus
- Grafana: https://artifacthub.io/packages/helm/grafana/grafana
