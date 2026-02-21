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
    @required
    filter: CriterionFilter
}

@protoEnabled
structure CriterionFilterBySymbolIgnoreCaseAndNameIgnoreCaseAndPrimaryClass {
    @required
    symbol: String

    @required
    name: String

    @required
    primaryClass: PrimaryClass
}

@protoEnabled
structure CriterionFilterByDataProviderIdAndDataProviderMetaDatasAssetId {
    @required
    dataProviderId: Document

    @required
    dataProviderMetaDatasAssetId: String
}

@protoEnabled
structure CriterionFilterByDataProviderIdAndDataProviderSymbol {
    @required
    dataProviderId: Document

    @required
    symbol: String
}
