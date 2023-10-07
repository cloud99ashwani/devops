variable "filename"{
    default = "pets.txt"
    type = string
}

variable "content"{
    type = map
    default = {
        "statement1" : "we love pets!"
        "statement2" : "We love animals!"
    }
}

variable "prefix"{
    type = list(string)
    default = ["Mr", "Mrs", "Sir"]
}

variable "separator"{
    default = "."
}

variable "length"{
    default = 2
    type = number
}

variable "password_change" {
    default = true
    type = bool
}