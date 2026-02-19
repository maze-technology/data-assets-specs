$version: "2"

namespace tech.maze.dtos.assets.requests

use tech.maze.dtos.assets.search#Criterion

structure BlacklistRequest {
    criterion: Criterion
}

structure BlacklistResponse {}
