//
//  SetExceptionBreakpointsRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// SetExceptionBreakpoints request; value of command field is 'setExceptionBreakpoints'.
/// The request configures the debugger's response to thrown exceptions. Each of the `filters`, `filterOptions`, and `exceptionOptions` in the request are independent configurations to a debug adapter indicating a kind of exception to catch. An exception thrown in a program should result in a `stopped` event from the debug adapter (with reason `exception`) if any of the configured filters match.
/// Clients should only call this request if the corresponding capability `exceptionBreakpointFilters` returns one or more filters.
struct SetExceptionBreakpointsRequest: Codable {
    var request: Request
    var arguments: SetExceptionBreakpointsArguments

    struct SetExceptionBreakpointsArguments: Codable {
        /// Set of exception filters specified by their ID. The set of all possible exception filters is defined by the `exceptionBreakpointFilters` capability. The `filter` and `filterOptions` sets are additive.
        var filters: [String]
        /// Set of exception filters and their options. The set of all possible exception filters is defined by the `exceptionBreakpointFilters` capability. This attribute is only honored by a debug adapter if the corresponding capability `supportsExceptionFilterOptions` is true. The `filter` and `filterOptions` sets are additive.
        var filterOptions: [ExceptionFilterOptions]?
        /// Configuration options for selected exceptions.
        /// The attribute is only honored by a debug adapter if the corresponding capability `supportsExceptionOptions` is true.
        var exceptionOptions: [ExceptionOptions]?
    }
}
