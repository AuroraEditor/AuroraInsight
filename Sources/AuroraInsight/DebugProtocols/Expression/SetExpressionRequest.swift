//
//  SetExpressionRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// SetExpression request; value of command field is 'setExpression'.
struct SetExpressionRequest: Codable {
    var request: Request
    var arguments: SetExpressionArguments

    struct SetExpressionArguments: Codable {
        /// The l-value expression to assign to.
        var expression: String
        /// The value expression to assign to the l-value expression.
        var value: String
        /// Evaluate the expressions in the scope of this stack frame.
        var frameId: Int?
        /// Specifies how the resulting value should be formatted.
        var format: ValueFormat?
    }
}
