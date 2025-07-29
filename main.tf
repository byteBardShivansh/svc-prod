provider "google" {
  project = "sound-habitat-462410-m4"
  region  = "us-central1"
}

resource "google_storage_bucket" "web_server_logs" {
  name     = "web-server-logs"
  location = "US"
} 