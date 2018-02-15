output "id" {
  value = "${data.external.kontena_node_show.id}"
}

output "names" {
  value = "${split(",", data.external.kontena_node_show.result["names"])}"
}

output "public_ips" {
  value = "${split(",", data.external.kontena_node_show.result["public_ips"])}"
}

output "private_ips" {
  value = "${split(",", data.external.kontena_node_show.result["private_ips"])}"
}

output "overlay_ips" {
  value = "${split(",", data.external.kontena_node_show.result["overlay_ips"])}"
}
