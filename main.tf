terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
}

provider "google" {
  project = "sound-habitat-462410-m4"
  region  = "us-central1"
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "google_storage_bucket" "web_server_logs" {
  name     = "web-server-logs-${random_id.bucket_suffix.hex}"
  location = "US"
}