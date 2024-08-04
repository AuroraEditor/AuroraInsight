//
//  DataBreakpoint.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Properties of a data breakpoint passed to the `setDataBreakpoints` request.
struct DataBreakpoint: Codable {
    /// An id representing the data. This id is returned from the `dataBreakpointInfo` request.
    var dataId: String
    /// The access type of the data.
    var accessType: DataBreakpointAccessType?
    /// An expression for conditional breakpoints.
    var condition: String?
    /// An expression that controls how many hits of the breakpoint are ignored.
    /// The debug adapter is expected to interpret the expression as needed.
    var hitCondition: String?
}
