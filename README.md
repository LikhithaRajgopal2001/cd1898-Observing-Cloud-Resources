# Kubernetes Observability on AWS EKS with Prometheus and Grafana

## Project Overview

Built and deployed a production-grade observability stack on AWS EKS to monitor Kubernetes workloads and infrastructure health using Prometheus, Grafana, Helm, and Node Exporter.

The goal was to monitor cluster health, node performance, and workload behavior through metrics collection and Grafana dashboards. The project also involved troubleshooting real-world infrastructure and Kubernetes issues including worker nodes becoming NotReady, pods remaining in Pending state, Grafana access/login failures, and IAM and Terraform resource conflicts during reprovisioning.

---

## Architecture

```
Terraform / AWS Setup
        ↓
Provision EKS Cluster + Worker Nodes
        ↓
Configure kubectl access
        ↓
Create monitoring namespace
        ↓
Deploy kube-prometheus-stack using Helm
        ↓
Prometheus collects metrics
        ↓
Grafana visualizes dashboards
        ↓
Validate setup and troubleshoot issues
```

---

## Tech Stack

| Category | Tools |
|----------|-------|
| Cloud | AWS EKS, EC2, IAM, Auto Scaling |
| Monitoring | Prometheus, Grafana, Node Exporter |
| Deployment | Helm, kubectl |
| Infrastructure as Code | Terraform (HCL) |
| Orchestration | Kubernetes |

---

## What Was Built

- Provisioned an EKS cluster and worker nodes using Terraform
- Configured kubectl access to the cluster
- Created a dedicated monitoring namespace
- Deployed the kube-prometheus-stack using Helm charts
- Configured Node Exporter for cluster and node-level metrics collection
- Built Grafana dashboards to visualize infrastructure health and resource utilization
- Validated observability pipelines through Prometheus targets and live Grafana panels

---

## Real-World Issues Troubleshot

- Worker nodes stuck in NotReady / Unschedulable states
- Pods remaining in Pending state due to resource constraints and scheduling failures
- Grafana access failures debugged through Kubernetes Secrets and service configurations
- IAM resource conflicts and Terraform provisioning errors during cluster reprovisioning
- Used kubectl describe, kubectl get events, node descriptions, and AWS service checks across EC2, IAM, and Auto Scaling components for root cause analysis

---

## Key Learnings

- Hands-on experience with Site Reliability Engineering practices
- Monitoring, alerting, and observability in distributed cloud environments
- Infrastructure recovery and operational debugging on Kubernetes
- Real-world troubleshooting of cloud-native deployment issues
