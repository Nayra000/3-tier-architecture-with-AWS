resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "db_subnet_group"
  subnet_ids = var.subnets
}

resource "aws_db_instance" "rds" {
  allocated_storage      = 10
  db_name                = "mydb"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  username               = "admin"
  password               = "admin123"
  parameter_group_name   = "default.mysql8.0"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = var.rds_sg
  multi_az               = true
  publicly_accessible    = false

}
# resource "aws_db_instance" "rds" {

#     allocated_storage           = 10
#     storage_type                = "gp3"
#     engine                      = "mysql"
#     engine_version              = "8.0"
#     instance_class              = "db.t2.micro"
#     identifier                  = "rds"
#     username                    = "admin"
#     password                    = "admin"
#     db_subnet_group_name        = aws_db_subnet_group.db_subnet_group.name
#     vpc_security_group_ids      = var.rds_sg
#     multi_az                    = true
#     skip_final_snapshot         = true
#     publicly_accessible         = false

#     lifecycle {
#         prevent_destroy = true  # Prevents accidental deletion of the database
#         ignore_changes  = all    # Ignores updates to prevent unnecessary modifications 
#     }
# }