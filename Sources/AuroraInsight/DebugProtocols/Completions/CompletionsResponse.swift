//
//  CompletionsResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `completions` request.
struct CompletionsResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// The possible completions for.
        var targets: [CompletionItem]
    }
}
