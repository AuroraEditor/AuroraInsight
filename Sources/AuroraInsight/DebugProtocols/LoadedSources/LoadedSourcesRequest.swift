//
//  LoadedSourcesRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// LoadedSources request; value of command field is 'loadedSources'.
struct LoadedSourcesRequest: Codable {
    var request: Request
    var arguments: LoadedSourcesArguments?  // Empty struct for potential future use.
}
