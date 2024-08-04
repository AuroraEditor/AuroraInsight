//
//  BreakpointLocation.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Properties of a breakpoint location returned from the `breakpointLocations` request.
struct BreakpointLocation: Codable {
    /// Start line of breakpoint location.
    var line: Int
    /// The start position of a breakpoint location. Position is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based.
    var column: Int?
    /// The end line of breakpoint location if the location covers a range.
    var endLine: Int?
    /// The end position of a breakpoint location (if the location covers a range). Position is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based.
    var endColumn: Int?
}
