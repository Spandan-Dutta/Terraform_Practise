#################################################################
##                         Public Subnet
#################################################################
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.amit_terraform_vpc.id      # resource_name.object_name.id
    availability_zone = "ap-south-1a"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    tags = {
      "Name" = "Public-Subnet-1"
    }

}

#################################################################
##                           Private Subnet
#################################################################

resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.amit_terraform_vpc.id
    availability_zone = "ap-south-1b"
    cidr_block = "10.0.2.0/24"
    tags = {
      "Name" = "Private-Subnet-1"
    }

}