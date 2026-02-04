$version: "2"
namespace tech.maze.dtos.assets.requests

use tech.maze.dtos.assets.models#Asset
use tech.maze.dtos.assets.search#Criterion

structure FindOne {
}

structure FindOneRequest {
  criterion: Criterion
}

structure FindOneResponse {
  asset: Asset
}
