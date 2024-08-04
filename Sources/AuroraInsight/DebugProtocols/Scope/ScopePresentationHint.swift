//
//  ScopePresentationHint.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// A hint for how to present this scope in the UI.
enum ScopePresentationHint: String, Codable {
    case arguments
    case locals
    case registers
}
