$version: "2"

namespace tech.maze.dtos.assets.models

use alloy.proto#protoEnabled
use smithy.api#Document
use smithy.api#Timestamp
use tech.maze.dtos.assets.enums#PrimaryClass

list AssetDataProvidersMetaDatasList {
    member: AssetMetaDatas
}

@protoEnabled
structure Asset {
    @required
    id: Document

    @required
    symbol: String

    @required
    name: String

    @required
    primaryClass: PrimaryClass

    @required
    dataProvidersMetaDatas: AssetDataProvidersMetaDatasList

    @required
    blacklisted: Boolean

    @required
    createdAt: Timestamp
}
