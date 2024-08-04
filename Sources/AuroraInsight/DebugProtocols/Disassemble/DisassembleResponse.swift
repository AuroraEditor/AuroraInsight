//
//  DisassembleResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `disassemble` request.
struct DisassembleResponse: Codable {
    var response: Response
    var body: Body?

    struct Body: Codable {
        /// The list of disassembled instructions.
        var instructions: [DisassembledInstruction]
    }
}
