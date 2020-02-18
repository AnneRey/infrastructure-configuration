module "app_load_balancer_rampup" {
  source = "../modules/app_load_balancer"
  aws_lb_name = "${var.app_load_balancer_rampup_name}"
  aws_lb_security_groups_id = ["${module.security_groups_alb_rampup.aws_security_group_id}"]
  aws_lb_subnets_id = ["${module.subnet_rampup.aws_subnet_id}","${module.subnet_rampup_2.aws_subnet_id}","${module.subnet_rampup_3.aws_subnet_id}","${module.subnet_rampup_4.aws_subnet_id}"]
}
