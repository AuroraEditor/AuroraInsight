//
//  EvaluateRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Evaluate request; value of command field is 'evaluate'.
struct EvaluateRequest: Codable {
    var request: Request
    var arguments: EvaluateArguments

    struct EvaluateArguments: Codable {
        /// The expression to evaluate.
        var expression: String
        /// Evaluate the expression in the scope of this stack frame.
        var frameId: Int?
        /// Optional context details for the evaluation.
        var context: String?
        /// Additional format specifications.
        var format: ValueFormat?
    }
}
