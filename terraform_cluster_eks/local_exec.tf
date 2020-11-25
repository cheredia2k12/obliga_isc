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
#  provisioner "local-exec" {
#    command = "kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'"
#  }
 # provisioner "local-exec" {
 #   command = "curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -"
 # }
 # provisioner "local-exec" {
 #   command = "sudo apt-get install apt-transport-https -y"
 # }
 # provisioner "local-exec" {
 #   command = "echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list"
 # }
 # provisioner "local-exec" {
 #   command = "sudo apt-get update -y && sudo apt-get install helm -y"
 # }
 # provisioner "local-exec" {
 #   command = "helm install --name prometheus stable/prometheus"
 # }
}
