//
//  VariableAttribute.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Attributes of a variable used to render it in the UI.
enum VariableAttribute: String, Codable {
    case staticAttribute = "static"
    case constantAttribute = "constant"
    case readOnlyAttribute = "readOnly"
    case rawStringAttribute = "rawString"
    case hasSideEffectsAttribute = "hasSideEffects"
}
