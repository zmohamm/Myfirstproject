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
    default     =  "debian-cloud/debian-9"
         
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
