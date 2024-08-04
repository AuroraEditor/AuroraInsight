//
//  SetBreakpointsRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// SetBreakpoints request; value of command field is 'setBreakpoints'.
/// Sets multiple breakpoints for a single source and clears all previous breakpoints in that source.
/// To clear all breakpoint for a source, specify an empty array.
/// When a breakpoint is hit, a `stopped` event (with reason `breakpoint`) is generated.
struct SetBreakpointsRequest: Codable {
    var request: Request
    var arguments: SetBreakpointsArguments

    struct SetBreakpointsArguments: Codable {
        /// The source location of the breakpoints; either `source.path` or `source.sourceReference` must be specified.
        var source: Source
        /// The code locations of the breakpoints.
        var breakpoints: [SourceBreakpoint]?
        /// Deprecated: The code locations of the breakpoints.
        var lines: [Int]?
        /// A value of true indicates that the underlying source has been modified which results in new breakpoint locations.
        var sourceModified: Bool?
    }
}
