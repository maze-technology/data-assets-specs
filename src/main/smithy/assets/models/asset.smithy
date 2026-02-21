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
    id: Document

    symbol: String

    name: String

    @required
    primaryClass: PrimaryClass

    createdAt: Timestamp

    dataProvidersMetaDatas: AssetDataProvidersMetaDatasList

    blacklisted: Boolean
}
