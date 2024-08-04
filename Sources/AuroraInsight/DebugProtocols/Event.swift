//
//  Event.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/// A debug adapter initiated event.
struct Event: Codable {
    var protocolMessage: ProtocolMessage
    
    /// Type of event.
    var event: String
    
    /// Event-specific information.
    var body: AnyCodable?
}
