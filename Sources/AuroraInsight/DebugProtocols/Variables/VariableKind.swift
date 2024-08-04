//
//  VariableKind.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// The kind of variable.
enum VariableKind: String, Codable {
    case property
    case method
    case `class`
    case data
    case event
    case baseClass
    case innerClass
    case `interface`
    case mostDerivedClass
    case `virtual`
    case dataBreakpoint
}
