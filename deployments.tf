/*
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

  depends_on = [module.kind_cluster]
}

resource "kubernetes_service" "app" {
  metadata {
    name = var.app
  }
  spec {
    selector = {
      App = var.app
    }
    port {
      node_port   = 30201
      port        = 8080
      target_port = 8080
    }

    type = "NodePort"
  }

  depends_on = [module.kind_cluster]
}
*/
