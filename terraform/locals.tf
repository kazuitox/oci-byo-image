locals {

  # Logic to use AD name provided by user input on ORM or to lookup for the AD name when running from CLI
  availability_domain = (var.availability_domain_name != "" ? var.availability_domain_name : data.oci_identity_availability_domain.ad.name)

  # not used now
  #is_flex_shape = "neverhappens" == "VM.Standard.E3.Flex" ? [var.vm_flex_shape_ocpus] : []
}
