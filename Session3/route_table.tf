#####################################################################
#                  Route Table Creation
#####################################################################
resource "aws_route_table" "terraform_rt" {
    vpc_id = aws_vpc.amit_terraform_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.terraform_igw.id

    }
    tags = {
      "Name" = "terraform-routeTable"
    }
    
}

####################################################################
#                     Route Table Association
####################################################################

resource "aws_route_table_association" "rt-association" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.terraform_rt.id
}
