//
//  SourceBreakpoint.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Properties of a breakpoint or logpoint passed to the `setBreakpoints` request.
struct SourceBreakpoint: Codable {
    /// The source line of the breakpoint or logpoint.
    var line: Int
    /// Start position within source line of the breakpoint or logpoint. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based.
    var column: Int?
    /// The expression for conditional breakpoints.
    /// It is only honored by a debug adapter if the corresponding capability `supportsConditionalBreakpoints` is true.
    var condition: String?
    /// The expression that controls how many hits of the breakpoint are ignored.
    /// The debug adapter is expected to interpret the expression as needed.
    /// The attribute is only honored by a debug adapter if the corresponding capability `supportsHitConditionalBreakpoints` is true.
    /// If both this property and `condition` are specified, `hitCondition` should be evaluated only if the `condition` is met, and the debug adapter should stop only if both conditions are met.
    var hitCondition: String?
    /// If this attribute exists and is non-empty, the debug adapter must not 'break' (stop) but log the message instead. Expressions within `{}` are interpolated.
    /// The attribute is only honored by a debug adapter if the corresponding capability `supportsLogPoints` is true.
    /// If either `hitCondition` or `condition` is specified, then the message should only be logged if those conditions are met.
    var logMessage: String?
    /// The mode of this breakpoint. If defined, this must be one of the `breakpointModes` the debug adapter advertised in its `Capabilities`.
    var mode: String?
}
