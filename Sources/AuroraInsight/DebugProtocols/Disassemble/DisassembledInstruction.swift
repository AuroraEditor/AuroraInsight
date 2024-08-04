//
//  DisassembledInstruction.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Represents a single disassembled instruction.
struct DisassembledInstruction: Codable {
    /// The address of the instruction. Treated as a hex value if prefixed with `0x`, or as a decimal value otherwise.
    var address: String
    /// Raw bytes representing the instruction and its operands, in an implementation-defined format.
    var instructionBytes: String?
    /// Text representing the instruction and its operands, in an implementation-defined format.
    var instruction: String
    /// Name of the symbol that corresponds with the location of this instruction, if any.
    var symbol: String?
    /// Source location that corresponds to this instruction, if any.
    /// Should always be set (if available) on the first instruction returned,
    /// but can be omitted afterwards if this instruction maps to the same source file as the previous instruction.
    var location: Source?
    /// The line within the source location that corresponds to this instruction, if any.
    var line: Int?
    /// The column within the line that corresponds to this instruction, if any.
    var column: Int?
    /// The end line of the range that corresponds to this instruction, if any.
    var endLine: Int?
    /// The end column of the range that corresponds to this instruction, if any.
    var endColumn: Int?
    /// A hint for how to present the instruction in the UI.
    /// A value of `invalid` may be used to indicate this instruction is 'filler' and cannot be reached by the program. For example, unreadable memory addresses may be presented as 'invalid.'
    var presentationHint: PresentationHint?

    enum PresentationHint: String, Codable {
        case normal
        case invalid
    }
}
