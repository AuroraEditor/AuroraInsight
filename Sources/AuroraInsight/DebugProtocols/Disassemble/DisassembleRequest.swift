//
//  DisassembleRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Disassemble request; value of command field is 'disassemble'.
struct DisassembleRequest: Codable {
    var request: Request
    var arguments: DisassembleArguments

    struct DisassembleArguments: Codable {
        /// Memory reference to the base location containing the instructions to disassemble.
        var memoryReference: String
        /// Offset (in bytes) to be applied to the reference location before disassembling.
        var offset: Int?
        /// Offset (in instructions) to be applied after the byte offset (if any) before disassembling.
        var instructionOffset: Int?
        /// Number of instructions to disassemble starting at the specified location and offset.
        var instructionCount: Int
        /// If true, the adapter should attempt to resolve memory addresses and other values to symbolic names.
        var resolveSymbols: Bool?
    }
}
