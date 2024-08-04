//
//  ScopesResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `scopes` request.
struct ScopesResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// The scopes of the stack frame.
        var scopes: [Scope]
    }
}
