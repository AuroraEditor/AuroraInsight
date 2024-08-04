//
//  Breakpoint.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Information about a breakpoint created in `setBreakpoints`, `setFunctionBreakpoints`, `setInstructionBreakpoints`, or `setDataBreakpoints` requests.
struct Breakpoint: Codable {
    /// The identifier for the breakpoint. It is needed if breakpoint events are used to update or remove breakpoints.
    var id: Int?
    /// If true, the breakpoint could be set (but not necessarily at the desired location).
    var verified: Bool
    /// A message about the state of the breakpoint.
    /// This is shown to the user and can be used to explain why a breakpoint could not be verified.
    var message: String?
    /// The source where the breakpoint is located.
    var source: Source?
    /// The start line of the actual range covered by the breakpoint.
    var line: Int?
    /// Start position of the source range covered by the breakpoint. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based.
    var column: Int?
    /// The end line of the actual range covered by the breakpoint.
    var endLine: Int?
    /// End position of the source range covered by the breakpoint. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based.
    /// If no end line is given, then the end column is assumed to be in the start line.
    var endColumn: Int?
    /// A memory reference to where the breakpoint is set.
    var instructionReference: String?
    /// The offset from the instruction reference.
    /// This can be negative.
    var offset: Int?
    /// A machine-readable explanation of why a breakpoint may not be verified. If a breakpoint is verified or a specific reason is not known, the adapter should omit this property. Possible values include:
    /// - `pending`: Indicates a breakpoint might be verified in the future, but the adapter cannot verify it in the current state.
    /// - `failed`: Indicates a breakpoint was not able to be verified, and the adapter does not believe it can be verified without intervention.
    var reason: String?
}
