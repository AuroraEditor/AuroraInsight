//
//  RestartRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Restart request; value of command field is 'restart'.
/// Restarts a debug session. Clients should only call this request if the corresponding capability `supportsRestartRequest` is true.
struct RestartRequest: Codable {
    var request: Request
    var arguments: RestartArguments?

    struct RestartArguments: Codable {
        /// The latest version of the `launch` or `attach` configuration.
        var arguments: LaunchRequestArguments?  // This could also be AttachRequestArguments depending on the context.
    }
}
