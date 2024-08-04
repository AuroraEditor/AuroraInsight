//
//  CompletionItemType.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Some predefined types for the CompletionItem. Please note that not all clients have specific icons for all of them.
enum CompletionItemType: String, Codable {
    case method
    case function
    case constructor
    case field
    case variable
    case classType = "class"
    case interface
    case module
    case property
    case unit
    case value
    case enumType = "enum"
    case keyword
    case snippet
    case text
    case color
    case file
    case reference
    case customcolor
}
