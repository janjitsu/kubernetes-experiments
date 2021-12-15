Kubernetes Experiments
======================

This is a simple exercise to deploy a simple cluster to kind using terraform

### Instructions

create cluster
```
terraform apply -target=module.kind_cluster
```

get credentials
```
kubectl config view --minify --flatten --context=kind-linux-tips
```
copy terraform.tfvar.dist and set credentials on terraform.tfvars

apply pod and service deployment
```
terraform apply
```

access via
```
http://localhost:30201
```
![punk-do-devops](./pics/punk-do-devops.png)


* links
[kubernetes-provider](https://learn.hashicorp.com/tutorials/terraform/kubernetes-provider)
