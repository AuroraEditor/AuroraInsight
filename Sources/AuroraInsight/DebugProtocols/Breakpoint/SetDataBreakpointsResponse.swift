//
//  SetDataBreakpointsResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `setDataBreakpoints` request.
/// Returned is information about each breakpoint created by this request.
struct SetDataBreakpointsResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// Information about the data breakpoints. The array elements correspond to the elements of the input argument `breakpoints` array.
        var breakpoints: [Breakpoint]
    }
}
