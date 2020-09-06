terraform {
  backend "gcs" {
    bucket  = "idvogados-terraform-state"
  }
}
