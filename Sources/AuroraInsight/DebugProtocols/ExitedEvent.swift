//
//  ExitedEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'exited' event type.
/// The event indicates that the debuggee has exited and returns its exit code.
struct ExitedEvent: Codable {
    var event: String = "exited"
    var body: Body
    
    struct Body: Codable {
        /// The exit code returned from the debuggee.
        var exitCode: Int
    }
}
