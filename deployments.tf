resource "kubernetes_deployment" "punk-do-devops" {
  metadata {
    name = var.app
    labels = {
      app = var.app
    }
  }
  spec {
    replicas = 1

    selector {
      match_labels = {
        app = var.app
      }
    }
    template {
      metadata {
        labels = {
          app = var.app
        }
      }
      spec {
        container {
          image = "camillamartins/dockernode:latest"
          name  = var.app
          port {
            container_port = 8080
            host_port = 30201
          }
        }
      }
    }
  }
}

