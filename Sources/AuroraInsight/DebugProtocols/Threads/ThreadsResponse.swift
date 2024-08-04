//
//  ThreadsResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `threads` request.
struct ThreadsResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// All threads.
        var threads: [Thread]
    }
}
