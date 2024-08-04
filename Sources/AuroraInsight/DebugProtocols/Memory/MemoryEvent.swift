//
//  MemoryEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'memory' event type.
/// This event indicates that some memory range has been updated. It should only be sent if the corresponding capability `supportsMemoryEvent` is true.
/// Clients typically react to the event by re-issuing a `readMemory` request if they show the memory identified by the `memoryReference` and if the updated memory range overlaps the displayed range. Clients should not make assumptions how individual memory references relate to each other, so they should not assume that they are part of a single continuous address range and might overlap.
/// Debug adapters can use this event to indicate that the contents of a memory range has changed due to some other request like `setVariable` or `setExpression`. Debug adapters are not expected to emit this event for each and every memory change of a running program, because that information is typically not available from debuggers and it would flood clients with too many events.
struct MemoryEvent: Codable {
    var event: String = "memory"
    var body: Body

    struct Body: Codable {
        /// Memory reference of a memory range that has been updated.
        var memoryReference: String
        /// Starting offset in bytes where memory has been updated. Can be negative.
        var offset: Int
        /// Number of bytes updated.
        var count: Int
    }
}
