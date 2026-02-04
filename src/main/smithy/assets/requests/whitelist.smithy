$version: "2"

namespace tech.maze.dtos.assets.requests

use tech.maze.dtos.assets.search#Criterion

structure Whitelist {}

structure WhitelistRequest {
    criterion: Criterion
}

structure WhitelistResponse {}
