resource "aws_instance" "terraform" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  tags          = var.tags
}
