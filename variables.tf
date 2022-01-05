variable "app" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "kind_cluster_config_path" {
  type        = string
  description = "The location where this cluster's kubeconfig will be saved to."
  default     = "./linux-tips-config"
}
