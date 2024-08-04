//
//  ProgressUpdateEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'progressUpdate' event type.
/// The event signals that the progress reporting needs to be updated with a new message and/or percentage.
/// The client does not have to update the UI immediately, but the clients needs to keep track of the message and/or percentage values.
/// This event should only be sent if the corresponding capability `supportsProgressReporting` is true.
struct ProgressUpdateEvent: Codable {
    var event: String = "progressUpdate"
    var body: Body

    struct Body: Codable {
        /// The ID that was introduced in the initial `progressStart` event.
        var progressId: String
        /// More detailed progress message. If omitted, the previous message (if any) is used.
        var message: String?
        /// Progress percentage to display (value range: 0 to 100). If omitted no percentage is shown.
        var percentage: Int?
    }
}
