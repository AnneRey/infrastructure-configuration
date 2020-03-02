resource "aws_instance" "aws_instance" {
  ami                         = "${var.aws_instance_ami}"
  instance_type               = "${var.aws_instance_type}"
  subnet_id                   = "${var.aws_instance_subnet_id}"
  key_name                    = "${var.aws_instance_key_name}"
  vpc_security_group_ids      = "${var.aws_instance_security_group}"
  associate_public_ip_address = "${var.aws_instance_public_ip}"
  source_dest_check           = "${var.aws_instance_dest_check}"
  user_data                   = "${var.aws_instance_user_data}"

  tags = {
    Name           = "${var.aws_instance_name}"
    created_by     = "Ana Rey"
    creation_date  = "13/02/2020"
    project_name   = "FINAL_RAMPUP"
    kubespray-role = "${var.aws_instance_kubespray_role}"
    stop           = "stop"
  }

}






