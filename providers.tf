provider "google" {
    project = var.project_id
    region = var.region
}

terraform{
    backend "gsc" {
        bucket = "gcs-data-pipeline270322"
        prefix = "terraform/state"
    }
    required_providers{
        google = {
            source = "hashicorp/google"
            version = "3.67.0"
        }
    }
}