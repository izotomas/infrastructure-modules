# --------------------------------------------------
# Init
# --------------------------------------------------

provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
  }
}

# --------------------------------------------------
# Capability OU
# --------------------------------------------------

module "capability_ou" {
  source    = "../../_sub/security/org-ou"
  name      = var.capability_ou_name
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

# --------------------------------------------------
# Service Control (Organization) Policies - legacy
# --------------------------------------------------

module "org_policy_denynoneuregions" {
  source      = "../../_sub/security/org-policy"
  name        = "DenyNonEURegions"
  description = "Deny access to all region outside of EU, except for non-region-bound services"
  policy      = local.denynoneuregions_policy
}

module "org_policy_denyiam" {
  source      = "../../_sub/security/org-policy"
  name        = "DenyIAM"
  description = "Deny IAM operations,.except for OrgRole"
  policy      = local.denyiam_policy
}

module "org_policy_denyexpensiveec2" {
  source      = "../../_sub/security/org-policy"
  name        = "DenyExpensiveEC2"
  description = "Deny very expensive EC2 instances"
  policy      = local.denyexpensiveec2_policy
}

module "org_policy_denyvpncreation" {
  source      = "../../_sub/security/org-policy"
  name        = "DenyVPNCreation"
  description = "Deny creating VPN"
  policy      = local.denyvpncreation_policy
}
