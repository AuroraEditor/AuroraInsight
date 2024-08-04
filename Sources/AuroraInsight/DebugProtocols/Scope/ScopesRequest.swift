//
//  ScopesRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Scopes request; value of command field is 'scopes'.
struct ScopesRequest: Codable {
    var request: Request
    var arguments: ScopesArguments

    struct ScopesArguments: Codable {
        /// Retrieve the scopes for the stack frame identified by `frameId`.
        var frameId: Int
    }
}
