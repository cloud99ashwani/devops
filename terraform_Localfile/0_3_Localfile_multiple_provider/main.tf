resource "local_file" "pet" {
    content     = "We love pets"
    filename = "pets.txt"
}

resource "random_pet" "my_pet" {
    prefix = "Mrs"
    separator = "."
    length = "1"
}