//
//  LoadedSourceEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'loadedSource' event type.
/// The event indicates that some source has been added, changed, or removed from the set of all loaded sources.
struct LoadedSourceEvent: Codable {
    var event: String = "loadedSource"
    var body: Body

    struct Body: Codable {
        /// The reason for the event.
        var reason: String
        /// The new, changed, or removed source.
        var source: Source
    }
}
