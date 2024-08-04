//
//  InvalidatedEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'invalidated' event type.
/// This event signals that some state in the debug adapter has changed and requires that the client needs to re-render the data snapshot previously requested.
/// Debug adapters do not have to emit this event for runtime changes like stopped or thread events because in that case the client refetches the new state anyway. But the event can be used for example to refresh the UI after rendering formatting has changed in the debug adapter.
/// This event should only be sent if the corresponding capability `supportsInvalidatedEvent` is true.
struct InvalidatedEvent: Codable {
    var event: String = "invalidated"
    var body: Body

    struct Body: Codable {
        /// Set of logical areas that got invalidated. This property has a hint characteristic: a client can only be expected to make a 'best effort' in honoring the areas but there are no guarantees. If this property is missing, empty, or if values are not understood, the client should assume a single value `all`.
        var areas: [String]?
        /// If specified, the client only needs to refetch data related to this thread.
        var threadId: Int?
        /// If specified, the client only needs to refetch data related to this stack frame (and the `threadId` is ignored).
        var stackFrameId: Int?
    }
}
