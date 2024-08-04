//
//  SetExceptionBreakpointsResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `setExceptionBreakpoints` request.
/// The response contains an array of `Breakpoint` objects with information about each exception breakpoint or filter. The `Breakpoint` objects are in the same order as the elements of the `filters`, `filterOptions`, `exceptionOptions` arrays given as arguments. If both `filters` and `filterOptions` are given, the returned array must start with `filters` information first, followed by `filterOptions` information.
struct SetExceptionBreakpointsResponse: Codable {
    var response: Response
    var body: Body?

    struct Body: Codable {
        /// Information about the exception breakpoints or filters.
        /// The breakpoints returned are in the same order as the elements of the `filters`, `filterOptions`, `exceptionOptions` arrays in the arguments. If both `filters` and `filterOptions` are given, the returned array must start with `filters` information first, followed by `filterOptions` information.
        var breakpoints: [Breakpoint]?
    }
}
