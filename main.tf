resource "template_file" "hello_world" {
    template = "identity.tpl"

    vars {
        input = "Hello1, World!🤖"
    }
    
    output "unsensitive" {
        value = "${var.unsensitive}"
    }
    output "sensitive" {
        value = "${var.sensitive}"
    }
}
