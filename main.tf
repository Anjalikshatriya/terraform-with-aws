resource "aws_instance" "web" {
count = length(var.tag_name)
  ami = "ami-0c7328b3dbb11f540"
  instance_type = var.ins_type

  tags = {
    Name = var.tag_name[count.index]
    Owner = "Anjali"
    Purpose = "learning"
  }
}



resource "aws_instance" "web2" {
for_each = var.tag_name2
  ami = " ami-0cff7528ff583bf9a"
  instance_type = var.ins_type

  tags = {
    Name = each.value
    Owner = "Anu"
    Purpose = "learning"
  }
}

