rgs = {
  "rg1" = {
    "name"     = "rg-nore"
    "location" = "central india"

  }

  "rg2" = {
    "name"     = "rg-nore01"
    "location" = "north europe"

  }

  "rg3" = {
    "name"     = "rg-nore02"
    "location" = "north europe"

  }

}

storage_account001 = {
  sa1 = {
    name                     = "sanore"
    resource_group_name      = "rg-nore"
    location                 = "central india"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }

  sa2 = {
    name                     = "sanore01"
    resource_group_name      = "rg-nore01"
    location                 = "north europe"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }

  sa3 = {
    name                     = "sanore03"
    resource_group_name      = "rg-nore02"
    location                 = "north europe"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }

}
