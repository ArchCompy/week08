location             = "Australia East"
resource_group_name  = "koalatech-task102-rg"
acr_name             = "koalatechacr1021"
storage_account_name = "koalatechst1021"
aks_cluster_name     = "koalatech-task102-aks"
aks_dns_prefix       = "koalatech1021"
aks_node_count       = 3
aks_node_vm_size     = "Standard_B2s_v2"
kubernetes_version   = "1.36.4"
environment          = "development"
tags = {
  Project     = "KoalaTech Course Platform"
  ManagedBy   = "Terraform"
  Practical   = "Task10.2D"
  Environment = "Development"
}
