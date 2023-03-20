resource "aws_instance" "key" {
ami = "ami-05502a22127df2492"
instance_type = "t2.micro"
key_name = "mykeypair"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
