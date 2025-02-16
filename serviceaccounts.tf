## SERVICE ACCOUNTS
module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "2.0.0"
  project_id    = var.project-id
  prefix        = "viewer-sa"
  names         = ["dev", "qa","stage","prod"]
  project_roles = [
    "${var.project-id}=>roles/viewer",
    "${var.project-id}=>roles/storage.objectViewer",
  ]
  grant_billing_role = true
  org_id = var.org_id
}