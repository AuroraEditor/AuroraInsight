//
//  SetFunctionBreakpointsResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `setFunctionBreakpoints` request.
/// Returned is information about each breakpoint created by this request.
struct SetFunctionBreakpointsResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// Information about the breakpoints. The array elements correspond to the elements of the `breakpoints` array.
        var breakpoints: [Breakpoint]
    }
}
