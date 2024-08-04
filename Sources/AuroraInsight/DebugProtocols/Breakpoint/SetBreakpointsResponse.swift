//
//  SetBreakpointsResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `setBreakpoints` request.
/// Returned is information about each breakpoint created by this request.
/// This includes the actual code location and whether the breakpoint could be verified.
/// The breakpoints returned are in the same order as the elements of the `breakpoints`
/// (or the deprecated `lines`) array in the arguments.
struct SetBreakpointsResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// Information about the breakpoints.
        /// The array elements are in the same order as the elements of the `breakpoints` (or the deprecated `lines`) array in the arguments.
        var breakpoints: [Breakpoint]
    }
}
