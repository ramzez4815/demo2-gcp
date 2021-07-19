terraform {
  backend "gcs" {
    bucket = "tf-state-task02"
    prefix = "terraform/state"
  }
}