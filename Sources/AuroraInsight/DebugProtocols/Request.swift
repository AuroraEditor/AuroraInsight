//
//  Request.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/// A client or debug adapter initiated request.
struct Request: Codable {
    var protocolMessage: ProtocolMessage
    /// The command to execute.
    var command: String
    /// Object containing arguments for the command.
    var arguments: AnyCodable?
}
