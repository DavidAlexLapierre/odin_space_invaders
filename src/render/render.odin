package render

import "vendor:sdl3"

draw :: proc(renderer: ^sdl3.Renderer) {
    sdl3.SetRenderDrawColor(renderer, 20, 20, 20, 255)
    sdl3.RenderClear(renderer)
    sdl3.RenderPresent(renderer)
}
