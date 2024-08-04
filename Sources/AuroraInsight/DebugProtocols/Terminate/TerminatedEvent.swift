//
//  TerminatedEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/// Event message for 'terminated' event type.
/// The event indicates that debugging of the debuggee has terminated. This does **not** mean that the debuggee itself has exited.
struct TerminatedEvent: Codable {
    var event: String = "terminated"
    var body: Body?
    
    struct Body: Codable {
        /// A debug adapter may set `restart` to true (or to an arbitrary object) to request that the client restarts the session.
        /// The value is not interpreted by the client and passed unmodified as an attribute `__restart` to the `launch` and `attach` requests.
        var restart: AnyCodable?
    }
}
