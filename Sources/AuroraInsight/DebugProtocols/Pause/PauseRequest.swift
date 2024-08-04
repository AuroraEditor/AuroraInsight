//
//  PauseRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Pause request; value of command field is 'pause'.
/// The request suspends the debuggee.
struct PauseRequest: Codable {
    var request: Request
    var arguments: PauseArguments

    struct PauseArguments: Codable {
        /// Pause execution for this thread.
        var threadId: Int
    }
}
