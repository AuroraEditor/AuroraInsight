//
//  BreakpointEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'breakpoint' event type.
/// The event indicates that some information about a breakpoint has changed.
struct BreakpointEvent: Codable {
    var event: String = "breakpoint"
    var body: Body

    struct Body: Codable {
        /// The reason for the event.
        /// Values: 'changed', 'new', 'removed', etc.
        var reason: String
        /// The `id` attribute is used to find the target breakpoint, the other attributes are used as the new values.
        var breakpoint: Breakpoint
    }
}
