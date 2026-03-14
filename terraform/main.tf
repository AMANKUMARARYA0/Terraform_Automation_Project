provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraform-ec2" {
  ami          = "ami-02dfbd4ff395f2a1b" # Amazon Linux 2 AMI (example)
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-ec2"
  }
}
