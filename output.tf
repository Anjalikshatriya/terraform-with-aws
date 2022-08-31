output "tag_name" {
  value = {for k,v in var.tag_name :k=>v}
}

output "tag_name2" {
   value = {for k,v in var.tag_name2 :k=>v}
}