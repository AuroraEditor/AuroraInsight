//
//  StepInTarget.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// A `StepInTarget` can be used in the `stepIn` request and determines into which single target the `stepIn` request should step.
struct StepInTarget: Codable {
    /// Unique identifier for a step-in target.
    var id: Int
    /// The name of the step-in target (shown in the UI).
    var label: String
    /// The line of the step-in target.
    var line: Int?
    /// Start position of the range covered by the step-in target. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based.
    var column: Int?
    /// The end line of the range covered by the step-in target.
    var endLine: Int?
    /// End position of the range covered by the step-in target. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based.
    var endColumn: Int?
}
