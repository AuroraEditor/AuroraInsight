//
//  SetExpressionResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `setExpression` request.
struct SetExpressionResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// The new value of the expression.
        var value: String
        /// The type of the value.
        var type: String?
        /// Properties of a value that can be used to determine how to render the result in the UI.
        var presentationHint: VariablePresentationHint?
        /// If `variablesReference` is > 0, the evaluate result is structured.
        var variablesReference: Int?
        /// The number of named child variables.
        var namedVariables: Int?
        /// The number of indexed child variables.
        var indexedVariables: Int?
        /// A memory reference to a location appropriate for this result.
        var memoryReference: String?
    }
}
