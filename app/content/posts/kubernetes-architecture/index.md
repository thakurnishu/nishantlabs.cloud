---
title: Kubernetes Architecture
date: 2025-08-06
tags: ["k8s", "architecture"]
series: ["Kubernetes"]
series_order: 1
---
Hi Everyone, 

Today we will be going through Kubernetes' in-depth architecture.

The first question one should ask is: What is Kubernetes and why did we even need it?

### What is Kubernetes ?
Kubernetes is a container orchestration platform that helps manage containers.

It is a distributed system that enables containers to automatically scale, self-heal, and manage the full lifecycle of production applications.

### Why did we even need it ?

Before Kubernetes deploying and managing application in container at scale was very difficult task.

Advantages of using kubernetes:
- **High Availablity & Scalability:** Application scale up/down automatically based on cpu/memory or custom metrics.
- **Declarative Infrastructure:** Define how many instance of application should be deploy via yaml files.
- **Vendor Agnostic:** Can be deployed on any public cloud or private cloud, means no vendor lock-in.
- **Service Discovery & Load Balancing:** Comes with internal dns for service discovery. In public cloud can deploy loadbalancer for traffic management.
- **Open Source Ecosystem:** Kubernetes is opensource which comes with many other opensource tools for enhancing lifecycle of applications.

{{< alert >}} 
I will be calling Kubernetes as K8S
{{< /alert >}}

--- 

K8S is mainly divided into two parts: `Control Plane` and `Data Plane`

**Control Plane:** It is a brain of k8s, where all main components like api-server, scheduler, controller-manager etc are deployed.

**Data Plane:** It is where all the application workloads are running, it consists of worker nodes which runs pods.
