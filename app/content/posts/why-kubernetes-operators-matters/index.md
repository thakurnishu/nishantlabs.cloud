---
title: Why Kubernetes Operators Matter?
date: 2026-01-30
draft: false
tags: ["linux", "k8s", "operators"]
showTaxonomies: true
showTableOfContents: true
---

So I was working on installing RabbitMQ as a Kubernetes deployment and got confused about where to start, like:
- Should I refer to the Docker image of RabbitMQ? And then check which envs are being used to make this work.
- Or should I go with the existing Helm chart from Bitnami (and then again, Bitnami is dropping support for their community Helm charts).

So I have internal thoughts for both of these scenarios:
1. Create k8s manifests referencing the RabbitMQ Docker image, where I will configure:
   - Add envs required for the container image to work.
   - Expose RabbitMQ through HTTPRoute (previously Ingress; now the k8s community is moving with Gateway API and HTTPRoute).
   
Then I thought, should I make it a Deployment or a StatefulSet?
SEE? I have to make sure how RabbitMQ internally works to run a stateful and stable RabbitMQ server.

2. Install an already existing RabbitMQ Helm chart (from any provider like Bitnami, etc.).
   - Only need to install RabbitMQ through the `helm install` command.

But if I want to create multiple instances of RabbitMQ, do I have to install different releases of the same Helm charts?


HERE comes the official RabbitMQ docs stating they have a k8s operator for RabbitMQ!
Let me explain why this is a big change and where the k8s community is moving.

Operators are custom deployments which expose some CRDs (Custom Resource Definitions), where I can use these CRDs to install multiple instances of that application.
And we already have multiple operators in our default Kubernetes cluster known as `kube-controller-manager`, which manage multiple Kubernetes native API resources.

Like `v1`, `apps/v1`, etc., where the `v1` apiVersion has a kind named `Pod` and the `apps/v1` apiVersion has a kind named `Deployment`.
Just like that, when we install any operators — here I will take the example of RabbitMQ.
The [RabbitMQ operator](https://www.rabbitmq.com/kubernetes/operator/install-operator) installs CRDs of kind `RabbitmqCluster` of apiVersion `rabbitmq.com/v1beta1`.
```yaml
apiVersion: rabbitmq.com/v1beta1
kind: RabbitmqCluster
metadata:
  name: production-ready
spec:
  replicas: 1
  resources:
    requests:
      cpu: 1
      memory: 2Gi
    limits:
      cpu: 1
      memory: 2Gi
  rabbitmq:
    additionalConfig: |
      loopback_users.guest = false
```

So after installing the `RabbitmqCluster` kind, rabbitmq operator will pick it up and deploy it with the provided configurations.

Advantages:
- I only have to install the operator once in the cluster and then I can manage this YAML manifest which will have all my defined configurations.
- With this, I can automate RabbitmqCluster deployment in my cluster through Argo CD or Flux CD, using Kustomize.
- I can install multiple instances of RabbitMQ with just different configuration setups.


NOW, why I am telling you this is because you see the community moving forward with operators as the first option.
And k8s is best with custom operators which deploy your application.


Here I have just been installing some application addons through operators. If you want, you can also develop a custom operator for your application, so when you install that CRD, your whole application will be deployed with a single Custom Resource Definition.

So move forward and explain to your teammates and managers all these points and try to integrate wherever you can switch from Helm to operators.

That's all from my side, bye.

If you like this post, follow for more; I will be posting more stuff like this.
