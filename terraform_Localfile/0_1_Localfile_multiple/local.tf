resource "local_file" "pet" {
  content  = "We love pets"
  filename = "pets.txt"
}