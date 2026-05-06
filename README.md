# Kubernetes Observability on AWS EKS with Prometheus and Grafana

## Project Overview
This project demonstrates how to build an observability stack for a Kubernetes environment running on **AWS EKS** using **Prometheus**, **Grafana**, **Helm**, and **Node Exporter**. 
The goal was to monitor cluster health, node performance, and workload behavior through metrics collection and dashboards.

The project also involved troubleshooting real-world infrastructure and Kubernetes issues such as:
- worker nodes becoming `NotReady`
- pods remaining in `Pending` state
- Grafana access/login issues
- IAM and Terraform resource conflicts during reprovisioning

## Architecture
The workflow of the project is:

```text
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
