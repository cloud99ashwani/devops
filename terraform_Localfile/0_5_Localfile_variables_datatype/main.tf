resource "local_file" "pet" {
    content = var.content["statement1"]
    filename = var.filename
}

resource "random_pet" "my_pet" {
    prefix = var.prefix[0]
    separator = var.separator
    length = var.length
}