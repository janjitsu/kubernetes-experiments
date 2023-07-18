/*
resource "kubernetes_service_account" "gitlab" {
  metadata {
    name = "gitlab"
  }

  depends_on = [kind_cluster.default]
}

resource "kubernetes_cluster_role_binding" "gitlab-rbac" {
  metadata {
    name = "gitlab-rbac"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }
  subject {
    kind      = "ServiceAccount"
    name      = "gitlab"
    namespace = "default"
  }

  depends_on = [kind_cluster.default]
}
*/

