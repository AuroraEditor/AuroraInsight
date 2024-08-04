//
//  SourceResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `source` request.
struct SourceResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// Content of the source reference.
        var content: String
        /// Content type (MIME type) of the source.
        var mimeType: String?
    }
}
