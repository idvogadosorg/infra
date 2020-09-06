terraform {
  backend "gcs" {
    credentials = "credentials.json"
    bucket  = "idvogados-terraform-state"
  }
}
