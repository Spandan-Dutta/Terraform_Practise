##########################################################
#                   Public Instance
##########################################################
resource "aws_instance" "Public_Instance" {
    ami = "ami-06489866022e12a14"
    subnet_id = aws_subnet.public_subnet.id
    security_groups = [aws_security_group.public-os-sg.id]
    instance_type = "t2.micro"
    tags = {
      "Name" = "public-os"
    }
}

##########################################################
#                      Private Instance
##########################################################

resource "aws_instance" "Private_Instance" {
    ami = "ami-06489866022e12a14"
    subnet_id = aws_subnet.private_subnet.id
    security_groups = [aws_security_group.private-os-sg.id]
    instance_type = "t2.micro"
    tags = {
      "Name" = "private-os"
    }
}