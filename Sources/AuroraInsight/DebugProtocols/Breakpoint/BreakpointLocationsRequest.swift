//
//  BreakpointLocationsRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// BreakpointLocations request; value of command field is 'breakpointLocations'.
/// The `breakpointLocations` request returns all possible locations for source breakpoints in a given range.
struct BreakpointLocationsRequest: Codable {
    var request: Request
    var arguments: BreakpointLocationsArguments

    struct BreakpointLocationsArguments: Codable {
        /// The source location of the breakpoints; either `source.path` or `source.sourceReference` must be specified.
        var source: Source
        /// Start line of range to search possible breakpoint locations in. If only the line is specified, the request returns all possible locations in that line.
        var line: Int
        /// Start position within `line` to search possible breakpoint locations in. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based. If no column is given, the first position in the start line is assumed.
        var column: Int?
        /// End line of range to search possible breakpoint locations in. If no end line is given, then the end line is assumed to be the start line.
        var endLine: Int?
        /// End position within `endLine` to search possible breakpoint locations in. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based. If no end column is given, the last position in the end line is assumed.
        var endColumn: Int?
    }
}
