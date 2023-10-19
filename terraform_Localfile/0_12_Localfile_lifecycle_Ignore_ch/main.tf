resource "local_file" "pet" {
    filename = var.filename
    content = "We Love pets!"
    file_permission = "0777"

    lifecycle {
        ignore_changes = [file_permission]
    }
}