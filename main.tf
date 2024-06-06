module "tools" {
  for_each = var.tools
  source   = "./module"

  name = each.valu["name"]
  instance_type = each.value["instance_type"]
}