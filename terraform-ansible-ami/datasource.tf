data "aws_ami" "ami" {
  most_recent = true
  name_regex       = "^packer_*"
  owners = ["648194886491"] 

   filter {
    name   = "virtualization-type"
    values = ["hvm"]  
}

}

