module "argo-cd" {
  source = "git::https://github.com/Ajinkya-A3/GKE-AP-Argocd.git//module?ref=main"
  
  values_path = "${path.module}/values/argocd-values.yaml"

}

module "sealed-secrets" {
  source = "git::https://github.com/Ajinkya-A3/Sealed-Secrets-Kubeseal.git//module?ref=main"

  values_path = "${path.module}/values/sealed-secrets-values.yaml"

}

module "cert-manager" {
  source = "git::https://github.com/Ajinkya-A3/Lets-Encrypt-Clusterissuer-K8s.git//module?ref=main"

  values_path = "${path.module}/values/cert-manager-values.yaml"

}