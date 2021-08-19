# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# mounttarget.tf 
#
# Purpose: The following script defines the logic to create a File Storage Mount Target
# Registry: https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/file_storage_mount_target


resource "oci_file_storage_mount_target" "MountTarget" {
  availability_domain = var.mount_target_availability_domain
  compartment_id      = local.compartment_id
  subnet_id           = local.subnet_ocid

  display_name = var.mount_target_display_name
  nsg_ids      = local.nsg_id == "" ? [] : [local.nsg_id]
}