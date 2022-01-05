module "kind_cluster" {
  source                = "pepodev/cluster/kind"
  version               = "~> 0.1"
  cluster_name          = "linux-tips"
  nodes                 = [{
    role                    = "control-plane"
    kubeadm_config_patches  = []
    extra_port_mappings     = {
      container_port          = "30201"
      host_port               = "30201"
      listen_address          = "0.0.0.0"
      protocol                = "TCP"
    }
  }]
}

