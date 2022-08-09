
module "email_channel"{
  source = "./modules/email_channel"
  project_id = var.project_id


}



module "cpu_alert_policy" {
  source                  = "./modules/alerts_cpu"

  
  project_id              = var.project_id
  notification_channels   = module.email_channel.email
  

}
