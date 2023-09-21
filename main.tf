terraform {
  required_version = ">= 0.12"
    required_providers {
        aws = {
            source = "hashcorp/aws"
        }
    }
}   

provider "aws" {
    region = "ap-southeast-1"
    access_key = "AKIA2SACZ4LTHEGFY6HS"
    secret_key = "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"
}

resource "aws_instance" "linux_server"{
    ami = "ami-0dacd9d37849a9f38"
    instance_type = "t2.micro"
}
output "public_ip" {
  value = aws_instance.linux_server.public_ip
}
