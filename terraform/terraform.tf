terraform {
  backend "gcs" {
    bucket = "{{ bucket }}" # Substitua pelo seu bucket para rodar local
  }
}
