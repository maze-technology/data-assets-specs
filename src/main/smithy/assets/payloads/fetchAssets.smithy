$version: "2"

namespace tech.maze.dtos.assets.payloads

use smithy.api#Document
use tech.maze.dtos.assets.models#Asset
use tech.maze.events#event

@event(type: "tech.maze.assets.fetch.request", topic: "assets.fetch.request", version: "1.0.0")
structure FetchAssetsRequest {}

@event(type: "tech.maze.assets.fetch.response", topic: "assets.fetch.response", version: "1.0.0")
structure FetchAssetsResponse {
    @required
    sourceRequest: FetchAssetsRequest

    @required
    dataProvider: Document

    @required
    asset: Asset

    @required
    isLast: Boolean

    @required
    @range(min: 0)
    skipped: Long
}
