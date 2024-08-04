//
//  VariablesRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Variables request; value of command field is 'variables'.
struct VariablesRequest: Codable {
    var request: Request
    var arguments: VariablesArguments

    struct VariablesArguments: Codable {
        /// The variable for which to retrieve its children.
        var variablesReference: Int
        /// Filter to limit the child variables to either named or indexed.
        var filter: String?
        /// The index of the first variable to return; if omitted children start at 0.
        var start: Int?
        /// The number of variables to return.
        var count: Int?
        /// Specifies details on how to format the Variable values.
        var format: ValueFormat?
    }
}
