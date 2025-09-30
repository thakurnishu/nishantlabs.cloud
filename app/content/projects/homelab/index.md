---
title: Homelab
date: 2025-01-22
tags: ["homelab", "k8s",]
showTaxonomies: true
---

**Github:** [🔗 Link](https://github.com/thakurnishu/homelab)

- End-to-end **Kubernetes platform automation** on bare-metal with **Talos Linux**.
- GitOps-driven deployments with **FluxCD**, managing cluster state declaratively.
- Core stack setup: 
  - **Traefik** (ingress) 
  - **Cert-Manager** (TLS automation) 
  - **MetalLB** (load balancing) 
  - **Longhorn** (distributed storage) 
  - **Prometheus Operator** (monitoring) 
  - **Pihole** (Local DNS Managment).
  - others
- Secure infra with **wildcard SSL**, static IP assignment, and RBAC-driven access.
- Built **Grafana observability dashboards** covering cluster health, ingress, storage, and DNS.
- Designed for **scalability, resilience, and reproducibility** in homelab/edge environments.

Tech: Talos Linux · Kubernetes · FluxCD · Helm · Kustomize · Docker · Traefik · Cert-Manager · MetalLB · Longhorn · Prometheus · Grafana · Bash


{{< gallery >}}
  <img src="img/main.webp" class="grid-w33" />
  <img src="img/pihole.webp" class="grid-w33"/>
  <img src="img/longhorn.webp" class="grid-w33" />
{{< /gallery >}}

{{< gallery >}}
  <img src="img/grafana.webp" class="grid-w50" />
  <img src="img/1.webp" class="grid-w50" />
{{< /gallery >}}
