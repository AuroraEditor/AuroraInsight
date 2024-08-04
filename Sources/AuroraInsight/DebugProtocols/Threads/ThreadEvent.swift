//
//  ThreadEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/// Event message for 'thread' event type.
/// The event indicates that a thread has started or exited.
struct ThreadEvent: Codable {
    var event: String = "thread"
    var body: Body
    
    struct Body: Codable {
        /// The reason for the event.
        /// Values: 'started', 'exited', etc.
        var reason: String
        /// The identifier of the thread.
        var threadId: Int
    }
}
