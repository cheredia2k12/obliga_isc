resource "null_resource" "update_kubeconfig" {
  depends_on = [
    module.eks.cluster_id
  ]
  provisioner "local-exec" {
    command = "aws eks update-kubeconfig --name ${local.cluster_name}"
  }
  provisioner "local-exec" {
    command = "kubectl create namespace argocd"
  }
  provisioner "local-exec" {
    command = "kubectl apply -n argocd -f argocd_install.yaml"
  }
  provisioner "local-exec" {
    command = "kubectl create namespace e-commerce"
  }
  provisioner "local-exec" {
    command = "kubectl create namespace lens-metrics"
  }
  provisioner "local-exec" {
    command = "kubectl apply -f metric-server.yaml"
  }
  provisioner "local-exec" {
    command = "kubectl apply -f application-argocd.yaml"
  }
  provisioner "local-exec" {
    command = "kubectl apply -f application-lens.yaml"
  }
}
