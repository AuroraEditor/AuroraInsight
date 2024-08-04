//
//  SourceRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Source request; value of command field is 'source'.
struct SourceRequest: Codable {
    var request: Request
    var arguments: SourceArguments

    struct SourceArguments: Codable {
        /// Specifies the source content to load. Either `source.path` or `source.sourceReference` must be specified.
        var source: Source?
        /// The reference to the source. This is the same as `source.sourceReference`.
        var sourceReference: Int
    }
}
