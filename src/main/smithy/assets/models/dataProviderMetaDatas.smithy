$version: "2"

namespace tech.maze.dtos.assets.models

use alloy.proto#protoEnabled
use smithy.api#Document
use tech.maze.dtos.assets.enums#PrimaryClass

map AssetMetaDatasExtraDatasMap {
    key: String
    value: String
}

map AssetMetaDatasToolBoxMap {
    key: String
    value: String
}

@protoEnabled
structure AssetMetaDatas {
    dataProviderId: Document
    asset: Asset
    primaryClass: PrimaryClass
    extraDatas: AssetMetaDatasExtraDatasMap
    toolBox: AssetMetaDatasToolBoxMap
}

@protoEnabled
structure AssetMetaDatasAsset {
    id: String
    symbol: String
    name: String
}
