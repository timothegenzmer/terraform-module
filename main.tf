resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = var.password
  parameter_group_name = aws_db_parameter_group.default.name
  skip_final_snapshot  = true
  storage_encrypted    = true
}


resource "aws_db_parameter_group" "default" {
  name   = "rds-pg"
  family = "mysql5.7"
}
