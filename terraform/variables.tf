locals {
  data_lake_bucket = "gcp_with_tf" #replace it with your google storage bucket id
}

variable "project" {
  description = "Your_GCP_Project_ID" #replace it with your project id
}

variable "region" {
  description = "Region for GCP resources. Choose as per your location: https://cloud.google.com/about/locations"
  default = "europe-west6" #replace it with your region code 
  type = string
}

variable "storage_class" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default = "STANDARD"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type = string
  default = "bq_tf_dataset"
}
