
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
