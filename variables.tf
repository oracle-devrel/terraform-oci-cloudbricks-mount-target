# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# variables.tf 
#
# Purpose: The following file declares all variables used in this backend repository

/********** Provider Variables NOT OVERLOADABLE **********/

variable "region" {
  description = "Target region where artifacts are going to be created"
}

variable "tenancy_ocid" {
  description = "OCID of tenancy"
}

variable "user_ocid" {
  description = "User OCID in tenancy."
}

variable "fingerprint" {
  description = "API Key Fingerprint for user_ocid derived from public API Key imported in OCI User config"
}

variable "private_key_path" {
  description = "Private Key Absolute path location where terraform is executed"

}

/********** Provider Variables NOT OVERLOADABLE **********/

/********** Brick Variables **********/

variable "mount_target_availability_domain" {
  description = "Defines the availability domain where OCI artifact will be created. This has the format abCd:RE-REGION-X-AD-1"
}

variable "mount_target_instance_compartment_name" {
  description = "Defines the compartment name where the infrastructure will be created"
}

variable "mount_target_network_compartment_name" {
  description = "Defines the compartment where the Network is currently located"
}

variable "vcn_display_name" {
  description = "VCN Display name to execute lookup"
}

variable "mount_target_nsg_name" {
  description = "Mount Target Display Name"
  default     = ""
}

variable "network_subnet_name" {
  description = "Defines the subnet display name where this resource will be created at"
}

variable "mount_target_display_name" {
  description = "Display Name of Mount Target"
  default     = ""

}

variable "is_nsg_required" {
  description = "Boolean that describes if an NSG is associated to the machine"
  default     = false
  type        = bool

}
/********** Brick Variables **********/