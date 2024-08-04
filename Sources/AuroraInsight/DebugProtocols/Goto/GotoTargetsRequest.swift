//
//  GotoTargetsRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// GotoTargets request; value of command field is 'gotoTargets'.
struct GotoTargetsRequest: Codable {
    var request: Request
    var arguments: GotoTargetsArguments

    struct GotoTargetsArguments: Codable {
        /// The source location for which the goto targets are determined.
        var source: Source
        /// The line location for which the goto targets are determined.
        var line: Int
        /// The position within `line` for which the goto targets are determined.
        var column: Int?
    }
}
