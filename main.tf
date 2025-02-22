resource "oci_core_security_list" "headscale" {
  compartment_id = "ocid1.tenancy.oc1..xxxx"
  display_name = "headscale-dual-stack"
  vcn_id       = "ocid1.vcn.oc1.ap-hyderabad-1.xxxxx"
  egress_security_rules {
    description = null
    protocol    = "All"
    destination      = "::/0"
    stateless   = false
  }
  ingress_security_rules {
    description = null
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false

    tcp_options {
      max = 22
      min = 22
    }
  }
  ingress_security_rules {
    description = null
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false

    tcp_options {
      max = 80
      min = 80
    }
  }
  ingress_security_rules {
    description = null
    protocol    = "All"
    source      = "::/0"
    source_type = "CIDR_BLOCK"
    stateless   = false
  }
}
