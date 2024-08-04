//
//  StartDebuggingRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// StartDebugging request; value of command field is 'startDebugging'.
/// This request is sent from the debug adapter to the client to start a new debug session of the same type as the caller.
/// This request should only be sent if the corresponding client capability `supportsStartDebuggingRequest` is true.
struct StartDebuggingRequest: Codable {
    var request: Request
    var arguments: StartDebuggingRequestArguments

    struct StartDebuggingRequestArguments: Codable {
        /// Arguments passed to the new debug session. The arguments must only contain properties understood by the `launch` or `attach` requests of the debug adapter and they must not contain any client-specific properties (e.g. `type`) or client-specific features (e.g. substitutable 'variables').
        var configuration: [String: AnyCodable]
        /// Indicates whether the new debug session should be started with a `launch` or `attach` request.
        var request: String
    }
}
