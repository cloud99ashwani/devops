resource "local_file" "cat" {
  content  = "My favorite pet is cat"
  filename = "cat.txt"
}