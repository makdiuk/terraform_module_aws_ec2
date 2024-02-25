resource "aws_instance" "terraform" {
  ami           = data.aws_ami.ubuntu22.id
  instance_type = "t2.micro"
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  tags = merge(var.tags, {
    Name = "ec2-${var.name}"
  })
}

output "ami" {
  value = aws_instance.terraform.ami
}
