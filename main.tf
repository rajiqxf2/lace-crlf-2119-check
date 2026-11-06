# A module fetched from git at init: its local-exec provisioner runs a script whose #! line ends in CRLF (lace-cloud/lace#2119).
resource "terraform_data" "crlf_localexec" {
  input = timestamp()

  provisioner "local-exec" {
    command = "${path.module}/run.sh"
  }
}
