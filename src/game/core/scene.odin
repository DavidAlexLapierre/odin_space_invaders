package game

Scene :: struct {
    id: u32,
    entities : []Entity
}

scene_new :: proc(ctx: ^Context) -> Scene {
    return Scene {
        id = context_create_id(ctx),
        entities = make([]Entity, 0)
    }
}