provider "aws" {
  region = "us-east-2"
}

variable "name" {
  description = "Name of the instance to deploy"
}

resource "aws_instance" "Jenkins_Server"{
  ami   = "ami-0aeb7c931a5a61206"
  instance_type = "t2.micro"
  key_name = "docker_cent"
  tags  =  {
      Name  = "${var.name}"
      Owner = "Joseph Ezeh"
  }
}


