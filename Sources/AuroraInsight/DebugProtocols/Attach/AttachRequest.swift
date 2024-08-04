//
//  AttachRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Attach request; value of command field is 'attach'.
/// The `attach` request is sent from the client to the debug adapter to attach to a debuggee that is already running.
struct AttachRequest: Codable {
    var request: Request
    var arguments: AttachRequestArguments

    struct AttachRequestArguments: Codable {
        /// Arbitrary data from the previous, restarted session.
        /// The data is sent as the `restart` attribute of the `terminated` event.
        /// The client should leave the data intact.
        var __restart: AnyCodable?
    }
}
