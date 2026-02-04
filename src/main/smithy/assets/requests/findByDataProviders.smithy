$version: "2"

namespace tech.maze.dtos.assets.requests

use smithy.api#Document
use tech.maze.dtos.assets.models#Asset
use tech.maze.dtos.assets.search#Pagination
use tech.maze.dtos.assets.search#PaginationInfos

list FindByDataProvidersRequestDataProvidersList {
    member: Document
}

list FindByDataProvidersResponseAssetsList {
    member: Asset
}

structure FindByDataProviders {}

structure FindByDataProvidersRequest {
    dataProviders: FindByDataProvidersRequestDataProvidersList
    pagination: Pagination
}

structure FindByDataProvidersResponse {
    assets: FindByDataProvidersResponseAssetsList
    paginationInfos: PaginationInfos
}
