//
//  InstructionBreakpoint.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Properties of a breakpoint passed to the `setInstructionBreakpoints` request.
struct InstructionBreakpoint: Codable {
    /// The instruction reference of the breakpoint.
    /// This should be a memory or instruction pointer reference from an `EvaluateResponse`, `Variable`, `StackFrame`, `GotoTarget`, or `Breakpoint`.
    var instructionReference: String
    /// The offset from the instruction reference in bytes.
    /// This can be negative.
    var offset: Int?
    /// An expression for conditional breakpoints.
    /// It is only honored by a debug adapter if the corresponding capability `supportsConditionalBreakpoints` is true.
    var condition: String?
    /// An expression that controls how many hits of the breakpoint are ignored.
    /// The debug adapter is expected to interpret the expression as needed.
    /// The attribute is only honored by a debug adapter if the corresponding capability `supportsHitConditionalBreakpoints` is true.
    var hitCondition: String?
    /// The mode of this breakpoint. If defined, this must be one of the `breakpointModes` the debug adapter advertised in its `Capabilities`.
    var mode: String?
}
