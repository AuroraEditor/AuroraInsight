//
//  BreakpointLocationsResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `breakpointLocations` request.
/// Contains possible locations for source breakpoints.
struct BreakpointLocationsResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// Sorted set of possible breakpoint locations.
        var breakpoints: [BreakpointLocation]
    }
}
