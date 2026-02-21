$version: "2"

namespace tech.maze.dtos.assets.requests

use alloy.proto#protoEnabled
use smithy.api#Document
use tech.maze.dtos.assets.models#Asset
use tech.maze.dtos.commons.search#Pagination
use tech.maze.dtos.commons.search#PaginationInfos

list FindByDataProvidersRequestDataProvidersList {
    member: Document
}

list FindByDataProvidersResponseAssetsList {
    member: Asset
}

@protoEnabled
structure FindByDataProvidersRequest {
    @required
    dataProviders: FindByDataProvidersRequestDataProvidersList

    @required
    pagination: Pagination
}

@protoEnabled
structure FindByDataProvidersResponse {
    @required
    assets: FindByDataProvidersResponseAssetsList

    @required
    paginationInfos: PaginationInfos
}
