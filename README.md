Kubernetes Experiments
======================

This is a simple exercise to deploy a simple cluster to kind using terraform

### Instructions

create cluster
```
terraform apply -target=kind_cluster.default -auto-approve && \
terraform apply -auto-approve
```

destroy clusters
```
terraform destroy -auto-approve
```

rebuild cluster
```
terraform destroy -auto-approve && \
terraform apply -target=kind_cluster.default -auto-approve && \
terraform apply -auto-approve
```

access via
```
http://localhost:30201
```
![punk-do-devops](./pics/punk-do-devops.png)


### trobleshooting

describe nodes
```
kubectl describe nodes --namespace ingresss-nginx
```

describe nginx pod
```
kubectl describe pod/ingress-nginx-controller-6b646767fb-gpdjx --namespace
ingress-nginx
```


* links
[kubernetes-provider](https://learn.hashicorp.com/tutorials/terraform/kubernetes-provider)
[ingress-nginx-kind](https://nickjanetakis.com/blog/configuring-a-kind-cluster-with-nginx-ingress-using-terraform-and-helm)
