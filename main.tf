resource "aws_instance" "terraform" {  
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  tags          = var.tags
}
