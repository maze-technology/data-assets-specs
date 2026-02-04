$version: "2"

namespace tech.maze.dtos.assets.models

use smithy.api#Document
use smithy.api#Timestamp
use tech.maze.dtos.assets.enums#PrimaryClass

list AssetDataProvidersMetaDatasList {
    member: DataProviderMetaDatas
}

structure Asset {
    id: Document
    symbol: String
    name: String
    primaryClass: PrimaryClass
    createdAt: Timestamp
    dataProvidersMetaDatas: AssetDataProvidersMetaDatasList
    blacklisted: Boolean
}
