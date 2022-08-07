module "cpu_alert_policy" {
  source                  = "./modules/alerts_cpu"

  
  project_id              = var.project_id
  

}
