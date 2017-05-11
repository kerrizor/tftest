resource "data" "hello_world" {
    template = "identity.tpl"

    vars {
        input = "Hello, World!🤖"
    }
}
