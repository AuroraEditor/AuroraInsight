//
//  VariablesResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `variables` request.
struct VariablesResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// All (or a range) of variables for the given variable reference.
        var variables: [Variable]
    }
}
