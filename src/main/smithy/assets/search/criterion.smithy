$version: "2"

namespace tech.maze.dtos.assets.search

use alloy.proto#protoEnabled

use smithy.api#Document
use tech.maze.dtos.assets.enums#PrimaryClass

union CriterionFilter {
    byId: Document
    bySymbolIgnoreCaseAndNameIgnoreCaseAndPrimaryClass: CriterionFilterBySymbolIgnoreCaseAndNameIgnoreCaseAndPrimaryClass
    byDataProviderIdAndDataProviderMetaDatasAssetId: CriterionFilterByDataProviderIdAndDataProviderMetaDatasAssetId
    byDataProviderIdAndDataProviderSymbol: CriterionFilterByDataProviderIdAndDataProviderSymbol
}

@protoEnabled
structure Criterion {
    filter: CriterionFilter
}

@protoEnabled
structure CriterionFilterBySymbolIgnoreCaseAndNameIgnoreCaseAndPrimaryClass {
    symbol: String
    name: String
    primaryClass: PrimaryClass
}

@protoEnabled
structure CriterionFilterByDataProviderIdAndDataProviderMetaDatasAssetId {
    dataProviderId: Document
    dataProviderMetaDatasAssetId: String
}

@protoEnabled
structure CriterionFilterByDataProviderIdAndDataProviderSymbol {
    dataProviderId: Document
    symbol: String
}
