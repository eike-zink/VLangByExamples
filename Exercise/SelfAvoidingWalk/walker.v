module main

import rand

struct Walker {
	Vector
}

fn (walker Walker) str() string {
	return '{x:${walker.x}, y:${walker.y}}'
}

fn (mut walker Walker) move(directions []Vector) {
	new_direction := rand.element(directions) or { Vector{x: 0, y: 0} }
	walker.Vector = walker.Vector + new_direction
}
