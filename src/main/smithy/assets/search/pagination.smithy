$version: "2"

namespace tech.maze.dtos.assets.search

use alloy.proto#protoEnabled

@protoEnabled
structure Pagination {
    page: Long
    limit: Long
}

@protoEnabled
structure PaginationInfos {
    totalElements: Long
    totalPages: Long
}