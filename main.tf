resource "template_file" "hello_world" {
    filename = "identity.tpl"

    vars {
        input = "Hello, World!"
    }
}
