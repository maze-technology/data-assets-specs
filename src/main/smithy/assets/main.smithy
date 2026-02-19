$version: "2"

namespace tech.maze.dtos.assets.main.proto

use alloy.proto#protoEnabled

use tech.maze.dtos.assets.requests#BlacklistRequest
use tech.maze.dtos.assets.requests#BlacklistResponse
use tech.maze.dtos.assets.requests#FindByDataProvidersRequest
use tech.maze.dtos.assets.requests#FindByDataProvidersResponse
use tech.maze.dtos.assets.requests#FindOneRequest
use tech.maze.dtos.assets.requests#FindOneResponse
use tech.maze.dtos.assets.requests#WhitelistRequest
use tech.maze.dtos.assets.requests#WhitelistResponse

@protoEnabled
service AssetsGRPC {
    version: "1.0"
    operations: [
        FindOne
        Blacklist
        Whitelist
        FindByDataProviders
    ]
}

@readonly
@protoEnabled
operation FindOne {
    input: FindOneRequest
    output: FindOneResponse
}

@protoEnabled
operation Blacklist {
    input: BlacklistRequest
    output: BlacklistResponse
}

@protoEnabled
operation Whitelist {
    input: WhitelistRequest
    output: WhitelistResponse
}

@readonly
@protoEnabled
operation FindByDataProviders {
    input: FindByDataProvidersRequest
    output: FindByDataProvidersResponse
}