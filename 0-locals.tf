locals {
  env                  = ""
  region               = ""
  resource_group_name  = ""
  eks_name             = ""
  eks_version          = "1.28.9"
  projeto              = ""
  orchestrator_version = "1.28.9"
  node_count           = 1
  enable_auto_scaling  = false
  vm_size              = "Standard_DS3_v2"
}
#az aks get-credentials --resource-group resource-local --name local-levi-local
