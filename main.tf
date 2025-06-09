# main.tf

# Definindo o provider AWS
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
  token      = var.session_token
}

# Criando um Security Group para a instância RDS
resource "aws_security_group" "rds_sg_custom" {
  name = "meu_rds_sg"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG_RDS_Luigi"
    Ambiente    = "Dev"
    Responsavel = "Luigi"
  }
}

# Criando a instância RDS MySQL
resource "aws_db_instance" "db_instance_custom" {
  engine                 = "mysql"
  identifier             = "banco-dev"
  allocated_storage      = 20
  engine_version         = "8.0.35"
  instance_class         = "db.t3.micro"
  username               = "usradmin"
  password               = "S3nhaSup34S3gura"
  parameter_group_name   = "default.mysql8.0"
  vpc_security_group_ids = [aws_security_group.rds_sg_custom.id]
  skip_final_snapshot    = true
  publicly_accessible    = true
  deletion_protection    = false

  tags = {
    Name        = "BancoRDSLuigi"
    Projeto     = "AtividadeNota"
    Ambiente    = "Dev"
    CriadoPor   = "Terraform"
  }
}
