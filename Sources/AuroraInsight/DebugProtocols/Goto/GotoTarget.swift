//
//  GotoTarget.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// A `GotoTarget` describes a code location that can be used as a target in the `goto` request.
/// The possible goto targets can be determined via the `gotoTargets` request.
struct GotoTarget: Codable {
    /// Unique identifier for a goto target. This is used in the `goto` request.
    var id: Int
    /// The name of the goto target (shown in the UI).
    var label: String
    /// The line of the goto target.
    var line: Int
    /// The column of the goto target.
    var column: Int?
    /// The end line of the range covered by the goto target.
    var endLine: Int?
    /// The end column of the range covered by the goto target.
    var endColumn: Int?
    /// A memory reference for the instruction pointer value represented by this target.
    var instructionPointerReference: String?
}
