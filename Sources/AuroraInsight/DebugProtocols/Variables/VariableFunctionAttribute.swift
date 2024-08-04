//
//  VariableAttribute 2.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Attributes of a variable used to render it in the UI.
enum VariableFunctionAttribute: String, Codable {
    case `static`
    case constant
    case readOnly
    case rawString
    case hasObjectId
    case canHaveObjectId
    case hasSideEffects
    case hasDataBreakpoint
}
