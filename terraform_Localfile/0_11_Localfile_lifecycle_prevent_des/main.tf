resource "local_file" "pet" {
    filename = var.filename
    content = "We Love pets!"
    file_permission = "0700"

    lifecycle {
        prevent_destroy =  true
    }
}