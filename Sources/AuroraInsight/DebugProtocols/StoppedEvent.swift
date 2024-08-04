//
//  StoppedEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'stopped' event type.
/// The event indicates that the execution of the debuggee has stopped due to some condition.
/// This can be caused by a breakpoint previously set, a stepping request has completed, by executing a debugger statement etc.
struct StoppedEvent: Codable {
    var event: String = "stopped"
    var body: Body
    
    struct Body: Codable {
        /// The reason for the event.
        /// For backward compatibility this string is shown in the UI if the `description` attribute is missing (but it must not be translated).
        /// Values: 'step', 'breakpoint', 'exception', 'pause', 'entry', 'goto', 'function breakpoint', 'data breakpoint', 'instruction breakpoint', etc.
        var reason: String
        /// The full reason for the event, e.g. 'Paused on exception'. This string is shown in the UI as is and can be translated.
        var description: String?
        /// The thread which was stopped.
        var threadId: Int?
        /// A value of true hints to the client that this event should not change the focus.
        var preserveFocusHint: Bool?
        /// Additional information. E.g. if reason is `exception`, text contains the exception name. This string is shown in the UI.
        var text: String?
        /// If `allThreadsStopped` is true, a debug adapter can announce that all threads have stopped.
        /// - The client should use this information to enable that all threads can be expanded to access their stacktraces.
        /// - If the attribute is missing or false, only the thread with the given `threadId` can be expanded.
        var allThreadsStopped: Bool?
        /// Ids of the breakpoints that triggered the event. In most cases there is only a single breakpoint but here are some examples for multiple breakpoints:
        /// - Different types of breakpoints map to the same location.
        /// - Multiple source breakpoints get collapsed to the same instruction by the compiler/runtime.
        /// - Multiple function breakpoints with different function names map to the same location.
        var hitBreakpointIds: [Int]?
    }
}
