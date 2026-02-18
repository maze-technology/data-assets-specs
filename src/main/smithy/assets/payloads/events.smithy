$version: "2"

namespace tech.maze.dtos.assets.payloads

use alloy.proto#protoEnabled
use smithy.api#Document
use tech.maze.events#event

@protoEnabled
@event(type: "tech.maze.assets.sync.event", topic: "assets.sync", version: "1.0.0")
structure SyncAssetsEvent {}

@protoEnabled
@event(type: "tech.maze.assets.sync.reply", topic: "assets.sync.reply", version: "1.0.0")
structure SyncAssetsReplyEvent {
    skipped: Long
}

@protoEnabled
@event(type: "tech.maze.assets.fetch.event", topic: "assets.fetch", version: "1.0.0")
structure FetchAssetsEvent {}

@protoEnabled
@event(type: "tech.maze.assets.fetch.reply", topic: "assets.fetch.reply", version: "1.0.0")
structure FetchAssetsReplyEvent {
    @required
    sourceEvent: FetchAssetsEvent

    @required
    dataProvider: Document

    @required
    key: String

    @required
    isLast: Boolean

    @required
    @range(min: 0)
    skipped: Long
}
