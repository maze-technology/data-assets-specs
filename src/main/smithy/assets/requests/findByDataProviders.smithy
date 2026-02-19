$version: "2"

namespace tech.maze.dtos.assets.requests

use alloy.proto#protoEnabled

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

@protoEnabled
structure FindByDataProvidersRequest {
    dataProviders: FindByDataProvidersRequestDataProvidersList
    pagination: Pagination
}

@protoEnabled
structure FindByDataProvidersResponse {
    assets: FindByDataProvidersResponseAssetsList
    paginationInfos: PaginationInfos
}
