variable "project_id" {

    type = string
    default=""
        
        
  
}
variable "name"{

    type= string
    default= "master"

}



variable "location" {

        
    description = "specify the region where the instances are to be deployed"
    type        =  string
    default     = "us-central1"
  
}

variable "machines_typ" {

    description = "Machine type to create, e.g. n1-standard-1"
    default     = "n1-standard-1"
  
}

variable "src_img" {

            
    description = "Source disk image. If neither source_image nor source_image_family is specified, defaults to the debian-cloud/debian-9."
    default     =   "ubuntu-os-cloud/ubuntu-1804-lts"
         
}


variable "disk_size_gb" {


    description = "specifies boot disk size in gb"
    type        =  number 
    default     =  100
  
}

variable "disk_type" {
    description = "boot disk type"
    default     = "pd-standard"
  
}




variable "zone" {
    description = "specifies the availability zone,where the instances are launched"
    type        =  string
    default     =   "us-central1-a"


  
}

variable "policies" {
    type = any
    default = {
"GCE Alerts policy-CPU Utilization" = {
display_name = ""   ## alert policy name which is displayed when an incident is generated 
combiner = "OR"



  content_value = "Please checkout current incident"

#documentation


  
#content_value = "Please checkout current incident"
    
conditions = [       ## multiple condtions are are specified and combined, each with different parameter values ,metrics and resources can be specified

    {
      display_name = ""  ## the  name  displayed of the alert policy condition due to which an incident is triggered
   
      filter     = "metric.type=\"compute.googleapis.com/instance/cpu/usage_time\" AND resource.type=\"gce_instance\""
      duration   = "60s"             
      comparison = "COMPARISON_GT"
      threshold_value = 80           ## thresold values  defined against which the metrics of the resource is matched against
      
      
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_SUM"
        cross_series_reducer = "REDUCE_SUM"       
      
    },
    {
      display_name = ""
    
      filter     = "metric.type=\"compute.googleapis.com/instance/cpu/usage_time\" AND resource.type=\"gce_instance\""
      duration   = "60s"
      comparison = "COMPARISON_GT"
      threshold_value = 95
      
      
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_SUM"
        cross_series_reducer = "REDUCE_SUM"       
      
    }

]},
"GCE Alert policy - Disk Utilization" = {
display_name = ""
combiner = "AND"
conditions = [
    {
      display_name = ""
   
      filter     = "metric.type=\"compute.googleapis.com/instance/disk/percent_used\" AND resource.type=\"gce_instance\""
      duration   = "60s"
      comparison = "COMPARISON_GT"
      threshold_value = 80
       alignment_period   = "60s"
        per_series_aligner = "ALIGN_SUM"
        cross_series_reducer = "REDUCE_SUM"       
        },
    {
      display_name = "GCE Alerts - Disk Utilization over 80% :P2"
  filter     = "metric.type=\"compute.googleapis.com/instance/disk/percent_used\" AND resource.type=\"gce_instance\""
      duration   = "60s"
      comparison = "COMPARISON_GT"
      threshold_value = 95
       alignment_period   = "60s"
        per_series_aligner = "ALIGN_SUM"
        cross_series_reducer = "REDUCE_SUM"       
    }
]}
}
}
