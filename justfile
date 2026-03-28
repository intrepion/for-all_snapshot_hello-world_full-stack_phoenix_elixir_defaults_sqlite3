ci-test:
    cd hello_world && mix test

initial_create:
    @if [ -d "hello_world" ]; then \
        echo "Error: hello_world directory exists"; \
        exit 1; \
    fi; \
    mix phx.new hello_world --database sqlite3

initial_destroy:
    rm -rf hello_world

install:
    cd hello_world && mix setup

run:
    cd hello_world && mix phx.server
