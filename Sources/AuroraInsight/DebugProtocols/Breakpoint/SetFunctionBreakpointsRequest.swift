//
//  SetFunctionBreakpointsRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// SetFunctionBreakpoints request; value of command field is 'setFunctionBreakpoints'.
/// Replaces all existing function breakpoints with new function breakpoints.
/// To clear all function breakpoints, specify an empty array.
/// When a function breakpoint is hit, a `stopped` event (with reason `function breakpoint`) is generated.
/// Clients should only call this request if the corresponding capability `supportsFunctionBreakpoints` is true.
struct SetFunctionBreakpointsRequest: Codable {
    var request: Request
    var arguments: SetFunctionBreakpointsArguments

    struct SetFunctionBreakpointsArguments: Codable {
        /// The function names of the breakpoints.
        var breakpoints: [FunctionBreakpoint]
    }
}
