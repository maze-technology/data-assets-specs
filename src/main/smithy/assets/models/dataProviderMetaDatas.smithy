$version: "2"
namespace tech.maze.dtos.assets.models

use smithy.api#Document
use tech.maze.dtos.assets.enums#PrimaryClass

map DataProviderMetaDatasExtraDatasMap {
  key: String
  value: String
}

map DataProviderMetaDatasToolBoxMap {
  key: String
  value: String
}

structure DataProviderMetaDatas {
  dataProviderId: Document
  asset: Asset
  primaryClass: PrimaryClass
  extraDatas: DataProviderMetaDatasExtraDatasMap
  toolBox: DataProviderMetaDatasToolBoxMap
}

structure DataProviderMetaDatasAsset {
  id: String
  symbol: String
  name: String
}
