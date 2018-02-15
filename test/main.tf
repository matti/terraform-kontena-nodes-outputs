module "kontena_nodes" {
  source = ".."
}

output "nodes" {
  value = {
    names       = "${module.kontena_nodes.names}"
    public_ips  = "${module.kontena_nodes.public_ips}"
    private_ips = "${module.kontena_nodes.private_ips}"
    overlay_ips = "${module.kontena_nodes.overlay_ips}"
  }
}
