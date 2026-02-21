$version: "2"

namespace tech.maze.dtos.assets.requests

use alloy.proto#protoEnabled
use tech.maze.dtos.assets.search#Criterion

@protoEnabled
structure BlacklistRequest {
    @required
    criterion: Criterion
}

@protoEnabled
structure BlacklistResponse {}
