//
//  DisconnectRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Disconnect request; value of command field is 'disconnect'.
/// The `disconnect` request asks the debug adapter to disconnect from the debuggee (thus ending the debug session) and then to shut down itself (the debug adapter).
struct DisconnectRequest: Codable {
    var request: Request
    var arguments: DisconnectArguments?

    struct DisconnectArguments: Codable {
        /// A value of true indicates that this `disconnect` request is part of a restart sequence.
        var restart: Bool?
        /// Indicates whether the debuggee should be terminated when the debugger is disconnected.
        var terminateDebuggee: Bool?
        /// Indicates whether the debuggee should stay suspended when the debugger is disconnected.
        var suspendDebuggee: Bool?
    }
}
