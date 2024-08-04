//
//  EvaluateResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `evaluate` request.
struct EvaluateResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// The result of the evaluate request.
        var result: String
        /// If `variablesReference` is > 0, the evaluate result is structured.
        var variablesReference: Int
        /// Additional details if any.
        var type: String?
        var presentationHint: VariablePresentationHint?
    }
}
