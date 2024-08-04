//
//  LoadedSourcesResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `loadedSources` request.
struct LoadedSourcesResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// Set of loaded sources.
        var sources: [Source]
    }
}
