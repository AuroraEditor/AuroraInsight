//
//  LaunchRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Launch request; value of command field is 'launch'.
/// This launch request is sent from the client to the debug adapter to start the debuggee with or without debugging (if `noDebug` is true).
struct LaunchRequest: Codable {
    var request: Request
    var arguments: LaunchRequestArguments

    struct LaunchRequestArguments: Codable {
        /// List of arguments. The first argument is the command to run.
        var args: [String]
        /// Additional configuration details specific to the debug session.
        var configurationDetails: [String: AnyCodable]
    }
}
