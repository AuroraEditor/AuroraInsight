//
//  SetVariableRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// SetVariable request; value of command field is 'setVariable'.
struct SetVariableRequest: Codable {
    var request: Request
    var arguments: SetVariableArguments

    struct SetVariableArguments: Codable {
        /// The reference of the variable container.
        var variablesReference: Int
        /// The name of the variable in the container.
        var name: String
        /// The value of the variable.
        var value: String
        /// Specifies details on how to format the response value.
        var format: ValueFormat?
    }
}
