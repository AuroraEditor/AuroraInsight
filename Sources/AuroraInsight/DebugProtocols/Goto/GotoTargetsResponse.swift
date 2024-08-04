//
//  GotoTargetsResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `gotoTargets` request.
struct GotoTargetsResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// The possible goto targets of the specified location.
        var targets: [GotoTarget]
    }
}
