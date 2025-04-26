jbprg = {

    rg1 = {
        rgname = "dhiru-rg1"
        location = "eastus"
    }
}

vjbp = {
    vnet1 = {
        vnetname = "vnet1"
        vnetlocation = "eastus"
        resource_group_name = "dhiru-rg1"
        address_space = ["10.0.0.0/16"]
    }
}

vjbp_subnet = {
    subnet1 = {
        subnetname = "subnet1"
        resource_group_name = "dhiru-rg1"
        virtual_network_name = "vnet1"
        address_prefixes = ["10.0.0.0/24"]
    }   
}


jbprg_nic = {
    nic1 = {
        nicname = "nic1"
        niclocation = "eastus"
        resource_group_name = "dhiru-rg1"
        frontend_ip_configuration_name = "ipconfig1"
        subnet_id = "subnet1"
        private_ip_address_allocation = "Dynamic"
        subnetname = "subnet1"
        virtual_network_name = "vnet1"


    }
}