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
    @required
    dataProviderId: Document

    @required
    asset: AssetMetaDatasAsset

    @required
    primaryClass: PrimaryClass

    @required
    extraDatas: AssetMetaDatasExtraDatasMap

    @required
    toolBox: AssetMetaDatasToolBoxMap
}

@protoEnabled
structure AssetMetaDatasAsset {
    @required
    id: String

    @required
    symbol: String

    @required
    name: String
}
