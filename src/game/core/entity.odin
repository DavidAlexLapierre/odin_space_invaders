package game

Entity :: struct {
    id: u32
}

create_entity :: proc(ctx: ^Context) -> Entity {
    return Entity {
        id = context_create_id(ctx)
    }
}