terraform {
  backend "gcs" {
    bucket = "{{ bucket }}"
  }
}
