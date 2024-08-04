//
//  TerminateRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Terminate request; value of command field is 'terminate'.
/// The `terminate` request is sent from the client to the debug adapter in order to shut down the debuggee gracefully.
struct TerminateRequest: Codable {
    var request: Request
    var arguments: TerminateArguments?

    struct TerminateArguments: Codable {
        /// A value of true indicates that this `terminate` request is part of a restart sequence.
        var restart: Bool?
    }
}
