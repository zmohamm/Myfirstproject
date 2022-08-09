
module "email_channel"{
  source = "./modules/email_channel"
  project_id = var.project_id


}



module "alerts_cpu" {
  source                  = "./modules/alerts_cpu"

  
  project_id              = var.project_id
  notification_channels   = module.email_channel.email
  

}
