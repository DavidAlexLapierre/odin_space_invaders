package main

import "core:fmt"
import sdl3 "vendor:/sdl3"
import "render"
import "game"

main :: proc() {
    if !sdl3.Init(sdl3.INIT_VIDEO) {
        fmt.println("Failed to initialize SDL3")
        return
    }

    window: ^sdl3.Window
    renderer: ^sdl3.Renderer

    sdl3.CreateWindowAndRenderer("Alien invader", 800, 600, nil, &window, &renderer)
    assert(window != nil && renderer != nil, string(sdl3.GetError()))

    running := true
    event: sdl3.Event

    ctx := game.context_new()
    scn := game.scene_new(&ctx)
    game.context_set_scene(&ctx, &scn)

    for running {
        for sdl3.PollEvent(&event) {
            #partial switch event.type {
                case .QUIT:
                    running = false
            }
        }

        render.draw(renderer)
    }
}