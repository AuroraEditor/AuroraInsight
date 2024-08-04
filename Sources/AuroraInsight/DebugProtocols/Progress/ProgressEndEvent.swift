//
//  ProgressEndEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'progressEnd' event type.
/// The event signals the end of the progress reporting with a final message.
/// This event should only be sent if the corresponding capability `supportsProgressReporting` is true.
struct ProgressEndEvent: Codable {
    var event: String = "progressEnd"
    var body: Body

    struct Body: Codable {
        /// The ID that was introduced in the initial `ProgressStartEvent`.
        var progressId: String
        /// More detailed progress message. If omitted, the previous message (if any) is used.
        var message: String?
    }
}
