//
//  InitializedEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'initialized' event type.
/// This event indicates that the debug adapter is ready to accept configuration requests (e.g. `setBreakpoints`, `setExceptionBreakpoints`).
/// A debug adapter is expected to send this event when it is ready to accept configuration requests (but not before the `initialize` request has finished).
/// The sequence of events/requests is as follows:
/// - adapters sends `initialized` event (after the `initialize` request has returned)
/// - client sends zero or more `setBreakpoints` requests
/// - client sends one `setFunctionBreakpoints` request (if corresponding capability `supportsFunctionBreakpoints` is true)
/// - client sends a `setExceptionBreakpoints` request if one or more `exceptionBreakpointFilters` have been defined (or if `supportsConfigurationDoneRequest` is not true)
/// - client sends other future configuration requests
/// - client sends one `configurationDone` request to indicate the end of the configuration.
struct InitializedEvent: Codable {
    var event: String = "initialized"
}
