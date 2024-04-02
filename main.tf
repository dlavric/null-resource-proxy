resource "null_resource" "mynull" {
  triggers = {
    value = timestamp()
  }

  provisioner "local-exec" {
    command = "echo token1token2token3"
  }

  provisioner "local-exec" {
    interpreter = ["/bin/bash", "-c"]
    command     = "/usr/bin/env"
  }

}
