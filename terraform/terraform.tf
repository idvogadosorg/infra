terraform {
  backend "gcs" {
    bucket = "{{ bucket }}" # Replace for your bucket to run it locally
  }
}
