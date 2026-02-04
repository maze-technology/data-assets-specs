$version: "2"

namespace tech.maze.dtos.assets.search

structure Pagination {
    page: Long
    limit: Long
}

structure PaginationInfos {
    totalElements: Long
    totalPages: Long
}
