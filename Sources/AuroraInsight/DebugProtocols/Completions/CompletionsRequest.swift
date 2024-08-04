//
//  CompletionsRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Completions request; value of command field is 'completions'.
struct CompletionsRequest: Codable {
    var request: Request
    var arguments: CompletionsArguments

    struct CompletionsArguments: Codable {
        /// Returns completions in the scope of this stack frame.
        var frameId: Int?
        /// One or more source lines.
        var text: String
        /// The position within `text` for which to determine the completion proposals.
        var column: Int
        /// A line for which to determine the completion proposals.
        var line: Int?
    }
}
