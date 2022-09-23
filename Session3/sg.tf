######################################################
#               Public Instance Security Group
######################################################
resource "aws_security_group" "public-os-sg" {
  name        = "public-os-sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.amit_terraform_vpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

##############################################################
#                 Private Instance Security Group
##############################################################

resource "aws_security_group" "private-os-sg" {
  name        = "private-os-sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.amit_terraform_vpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["${aws_instance.Public_Instance.private_ip}/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}