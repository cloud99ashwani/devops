resource "local_file" "pet" {
  filename = var.filename
  content  = "My Favorite pet is ${random_pet.my_pet.id}"
  depends_on = [
    random_pet.my_pet
  ]
}

resource "random_pet" "my_pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}