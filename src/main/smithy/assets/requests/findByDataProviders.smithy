$version: "2"
namespace tech.maze.dtos.assets.requests

use smithy.api#Document
use tech.maze.dtos.assets.models#Asset
use tech.maze.dtos.assets.search#Infos
use tech.maze.dtos.assets.search#Pagination

list FindByDataProvidersRequestDataProvidersList {
  member: Document
}

list FindByDataProvidersResponseAssetsList {
  member: Asset
}

structure FindByDataProviders {
}

structure FindByDataProvidersRequest {
  dataProviders: FindByDataProvidersRequestDataProvidersList
  pagination: Pagination
}

structure FindByDataProvidersResponse {
  assets: FindByDataProvidersResponseAssetsList
  paginationInfos: Infos
}
