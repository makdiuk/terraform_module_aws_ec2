resource "aws_instance" "terraform" {
  ami           = data.aws_ami.ubuntu22.id
  instance_type = "t2.micro"
  tags          = var.tags
  key_name      = var.key_name
}

output "ami" {
  value = aws_instance.terraform.ami
}
