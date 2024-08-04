//
//  SetVariableResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `setVariable` request.
struct SetVariableResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// The new value of the variable.
        var value: String
        /// The type of the new value.
        var type: String?
        /// If `variablesReference` is > 0, the new value is structured and its children can be retrieved by passing `variablesReference` to the `variables` request.
        var variablesReference: Int?
        /// The number of named child variables.
        var namedVariables: Int?
        /// The number of indexed child variables.
        var indexedVariables: Int?
        /// A memory reference to a location appropriate for this result.
        var memoryReference: String?
    }
}
