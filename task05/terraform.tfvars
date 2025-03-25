resource_groups = {
  rg1 = {
    name     = "cmaz-7850b25e-mod5-rg-01"
    location = "West Europe"
    tags     = { Creator = "bandari_shashank@epam.com" }
  },
  rg2 = {
    name     = "cmaz-7850b25e-mod5-rg-02"
    location = "East US"
    tags     = { Creator = "bandari_shashank@epam.com" }
  },
  rg3 = {
    name     = "cmaz-7850b25e-mod5-rg-03"
    location = "North Europe"
    tags     = { Creator = "bandari_shashank@epam.com" }
  }
}

app_service_plans = {
  asp1 = {
    name         = "cmaz-7850b25e-mod5-asp-01"
    sku          = "P0v3"
    worker_count = 2
    os_type      = "Windows"
    tags         = { Creator = "bandari_shashank@epam.com" }
  },
  asp2 = {
    name         = "cmaz-7850b25e-mod5-asp-02"
    sku          = "P1v3"
    worker_count = 1
    os_type      = "Windows"
    tags         = { Creator = "bandari_shashank@epam.com" }
  }
}

app_services = {
  app1 = {
    name = "cmaz-7850b25e-mod5-app-01"
    tags = { Creator = "bandari_shashank@epam.com" }
  },
  app2 = {
    name = "cmaz-7850b25e-mod5-app-02"
    tags = { Creator = "bandari_shashank@epam.com" }
  }
}

access_rules = {
  allow_ip_rule = {
    name       = "allow-ip"
    allowed_ip = "18.153.146.156"
  },
  allow_tm_rule = {
    name        = "allow-tm"
    service_tag = "AzureTrafficManager"
  }
}

traffic_manager = {
  name           = "cmaz-7850b25e-mod5-traf"
  routing_method = "Performance"
  tags           = { Creator = "bandari_shashank@epam.com" }
}
