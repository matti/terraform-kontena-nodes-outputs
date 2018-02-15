data "external" "kontena_node_show" {
  program = ["ruby", "${path.module}/nodes.rb"]

  query = {
    depends_id = "${var.depends_id}"
  }
}
