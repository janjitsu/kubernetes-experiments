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

/*
resource "kubernetes_service" "go-web-api" {
  metadata {
    name = "go-web-api"
  }
  spec {
    selector = {
      App = "go-web-api"
    }
    port {
      node_port   = 30201
      port        = 8080
      target_port = 8080
    }

    type = "NodePort"
  }
}
*/
