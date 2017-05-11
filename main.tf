resource "template_file" "hello_world" {
    template = "identity.tpl"

    vars {
        input = "Hello1, World!🤖"
    }
}
