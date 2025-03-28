package game

Context :: struct {
    next_id: u32,
    active_scene: ^Scene
}

context_create_id :: proc(ctx: ^Context) -> u32 {
    next_id := ctx.next_id
    ctx.next_id += 1
    return next_id
}

/* Initialize the game data */
context_new :: proc() -> Context {
    return Context{
        next_id = 0,
        active_scene = nil,
    }
}

context_set_scene :: proc(ctx: ^Context, scn: ^Scene) {
    ctx.active_scene = scn
}

context_update :: proc(ctx: ^Context) {
    
}

context_draw :: proc(ctx: ^Context) {

}