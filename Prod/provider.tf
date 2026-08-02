terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.64.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "ST"
  #   tenant_id            = "e6f50855-b2e7-411e-9368-f95f2dc48c00" # Can also be set via `ARM_TENANT_ID` environment variable. Azure CLI will fallback to use the connected tenant ID if not supplied.
  #   storage_account_name = "ststorage77"                    # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
  #   container_name       = "bluedrum"                             # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
  #   key                  = "sachin.terraform.tfstate"             # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  # }
}

provider "azurerm" {
  features {

  }
}

