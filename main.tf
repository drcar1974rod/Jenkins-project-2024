provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "aws_linux_2" {
    count = 1
    ami = "ami-0e54eba7c51c234f6"
    instance_type = "t2.micro"
    key_name = "ubunt_key"
    tags = {
        Name = "aws_linux_2_terraform"
    }
}
