//
//  SetInstructionBreakpointsRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// SetInstructionBreakpoints request; value of command field is 'setInstructionBreakpoints'.
/// Replaces all existing instruction breakpoints. Typically, instruction breakpoints would be set from a disassembly window.
/// To clear all instruction breakpoints, specify an empty array.
/// When an instruction breakpoint is hit, a `stopped` event (with reason `instruction breakpoint`) is generated.
/// Clients should only call this request if the corresponding capability `supportsInstructionBreakpoints` is true.
struct SetInstructionBreakpointsRequest: Codable {
    var request: Request
    var arguments: SetInstructionBreakpointsArguments

    struct SetInstructionBreakpointsArguments: Codable {
        /// The instruction references of the breakpoints
        var breakpoints: [InstructionBreakpoint]
    }
}
