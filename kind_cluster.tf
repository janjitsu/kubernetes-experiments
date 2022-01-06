/*
module "kind_cluster" {
  source                = "pepodev/cluster/kind"
  version               = "~> 0.1"
  cluster_name          = var.cluster_name
  nodes                 = [
    {
      role                    = "control-plane"
      kubeadm_config_patches  = []
      extra_port_mappings     = {
        container_port        = "80"
        host_port             = "30201"
        listen_address        = "0.0.0.0"
        protocol              = "TCP"
      }
    },
    {
      role                    = "worker"
      kubeadm_config_patches  = []
      extra_port_mappings     = null
    }
  ]
}
*/
provider "kind" {
}

provider "kubernetes" {
  config_path = pathexpand(var.kind_cluster_config_path)
}

resource "kind_cluster" "default" {
  name            = var.cluster_name
  kubeconfig_path = pathexpand(var.kind_cluster_config_path)
  wait_for_ready  = true

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"

      kubeadm_config_patches = [
        "kind: InitConfiguration\nnodeRegistration:\n  kubeletExtraArgs:\n    node-labels: \"ingress-ready=true\"\n"
      ]
      extra_port_mappings {
        container_port = 80
        host_port      = 80
      }
      extra_port_mappings {
        container_port = 443
        host_port      = 443
      }
    }

    node {
      role = "worker"
    }
  }
}
