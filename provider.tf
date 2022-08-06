provider "google" {
  project     =  var.project_id
  region      = "us-central1"
}

terraform{
    required_version = "1.2.5"
}
