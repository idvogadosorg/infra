provider "google" {
  credentials = file(var.credentials)
  project     = "idvogados"
  region      = "us-central1"
}