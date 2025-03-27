package main

import "core:fmt"
import sdl3 "vendor:/sdl3"

main :: proc() {
    if !sdl3.Init(sdl3.INIT_VIDEO) {
        fmt.println("Failed to initialize SDL3")
        return
    }

    window: ^sdl3.Window
    renderer: ^sdl3.Renderer

    sdl3.CreateWindowAndRenderer("Alien invader", 1200, 800, nil, &window, &renderer)
    assert(window != nil && renderer != nil, string(sdl3.GetError()))

    running := true
    event: sdl3.Event

    for running {
        for sdl3.PollEvent(&event) {
            #partial switch event.type {
                case .QUIT:
                    running = false
            }
        }

        sdl3.SetRenderDrawColor(renderer, 20, 20, 20, 255)
        sdl3.RenderClear(renderer)
        sdl3.RenderPresent(renderer)
    }
}