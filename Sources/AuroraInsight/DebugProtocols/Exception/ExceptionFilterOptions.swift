//
//  ExceptionFilterOptions.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// An `ExceptionFilterOptions` is used to specify an exception filter together with a condition for the `setExceptionBreakpoints` request.
struct ExceptionFilterOptions: Codable {
    /// ID of an exception filter returned by the `exceptionBreakpointFilters` capability.
    var filterId: String
    /// An expression for conditional exceptions.
    /// The exception breaks into the debugger if the result of the condition is true.
    var condition: String?
    /// The mode of this exception breakpoint. If defined, this must be one of the `breakpointModes` the debug adapter advertised in its `Capabilities`.
    var mode: String?
}
