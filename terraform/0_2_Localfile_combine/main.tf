resource "local_file" "pet" {
    content     = "We love pets"
    filename = "pets.txt"
}

resource "local_file" "cat" {
    content     = "My favorite pet is cat"
    filename = "cat.txt"
}