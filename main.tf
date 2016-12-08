resource "template_file" "hello_world" {
    filename = "identitxy.tpl"

    vars {
        input = "Hello, World!"
    }
}
