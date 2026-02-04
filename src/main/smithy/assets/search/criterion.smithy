$version: "2"

namespace tech.maze.dtos.assets.search

use smithy.api#Document
use tech.maze.dtos.assets.enums#PrimaryClass

union CriterionFilter {
    byId: Document
    bySymbolIgnoreCaseAndNameIgnoreCaseAndPrimaryClass: CriterionFilterBySymbolIgnoreCaseAndNameIgnoreCaseAndPrimaryClass
    byDataProviderIdAndDataProviderMetaDatasAssetId: CriterionFilterByDataProviderIdAndDataProviderMetaDatasAssetId
    byDataProviderIdAndDataProviderSymbol: CriterionFilterByDataProviderIdAndDataProviderSymbol
}

structure Criterion {
    filter: CriterionFilter
}

structure CriterionFilterBySymbolIgnoreCaseAndNameIgnoreCaseAndPrimaryClass {
    symbol: String
    name: String
    primaryClass: PrimaryClass
}

structure CriterionFilterByDataProviderIdAndDataProviderMetaDatasAssetId {
    dataProviderId: Document
    dataProviderMetaDatasAssetId: String
}

structure CriterionFilterByDataProviderIdAndDataProviderSymbol {
    dataProviderId: Document
    symbol: String
}
