//
//  ContinuedEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'continued' event type.
/// The event indicates that the execution of the debuggee has continued.
/// Please note: a debug adapter is not expected to send this event in response to a request that implies that execution continues, e.g. `launch` or `continue`.
/// It is only necessary to send a `continued` event if there was no previous request that implied this.
struct ContinuedEvent: Codable {
    var event: String = "continued"
    var body: Body
    
    struct Body: Codable {
        /// The thread which was continued.
        var threadId: Int
        /// If `allThreadsContinued` is true, a debug adapter can announce that all threads have continued.
        var allThreadsContinued: Bool?
    }
}
