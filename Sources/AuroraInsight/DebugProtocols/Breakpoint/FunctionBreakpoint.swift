//
//  FunctionBreakpoint.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Properties of a breakpoint passed to the `setFunctionBreakpoints` request.
struct FunctionBreakpoint: Codable {
    /// The name of the function.
    var name: String
    /// An expression for conditional breakpoints.
    /// It is only honored by a debug adapter if the corresponding capability `supportsConditionalBreakpoints` is true.
    var condition: String?
    /// An expression that controls how many hits of the breakpoint are ignored.
    /// The debug adapter is expected to interpret the expression as needed.
    /// The attribute is only honored by a debug adapter if the corresponding capability `supportsHitConditionalBreakpoints` is true.
    var hitCondition: String?
}
