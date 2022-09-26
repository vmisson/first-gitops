module "resource_group" {
  source                  = "../terraform-modules-azure/resourcegroup"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.location
}