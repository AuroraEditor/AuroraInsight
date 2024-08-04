//
//  CapabilitiesEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'capabilities' event type.
/// The event indicates that one or more capabilities have changed.
/// Since the capabilities are dependent on the client and its UI, it might not be possible to change that at random times (or too late).
/// Consequently this event has a hint characteristic: a client can only be expected to make a 'best effort' in honoring individual capabilities but there are no guarantees.
/// Only changed capabilities need to be included, all other capabilities keep their values.
struct CapabilitiesEvent: Codable {
    var event: String = "capabilities"
    var body: Body

    struct Body: Codable {
        /// The set of updated capabilities.
        var capabilities: Capabilities
    }
}
