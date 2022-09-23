resource "aws_internet_gateway" "terraform_igw" {
    vpc_id = aws_vpc.amit_terraform_vpc.id
    tags = {
      "Name" = "terraform_IGW"
    }
}