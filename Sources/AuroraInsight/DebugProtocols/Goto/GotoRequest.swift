//
//  GotoRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Goto request; value of command field is 'goto'.
/// The request sets the location where the debuggee will continue to run.
struct GotoRequest: Codable {
    var request: Request
    var arguments: GotoArguments

    struct GotoArguments: Codable {
        /// Set the goto target for this thread.
        var threadId: Int
        /// The location where the debuggee will continue to run.
        var targetId: Int
    }
}
