$version: "2"

namespace tech.maze.dtos.assets.requests

use alloy.proto#protoEnabled
use tech.maze.dtos.assets.models#Asset
use tech.maze.dtos.assets.search#Criterion

@protoEnabled
structure FindOneRequest {
    @required
    criterion: Criterion
}

@protoEnabled
structure FindOneResponse {
    @required
    asset: Asset
}
