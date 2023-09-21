terraform {

#   required_version = ">= 0.12"
    required_providers {
        aws = {
            source = "hashcorp/aws"
        }
    }
}   

provider "aws" {
    region = "ap-southeast-1";
    access_key = ""
}