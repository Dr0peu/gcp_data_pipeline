resource "google_storage_bucket" "gcs_bucket" {
    name = "test-bucket-random-270322"
    location = var.region
}