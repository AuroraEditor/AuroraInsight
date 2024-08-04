//
//  InvalidatedAreas.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Logical areas that can be invalidated by the `invalidated` event.
enum InvalidatedAreas: String, Codable {
    case all
    case stacks
    case threads
    case variables
    case custom = "custom" // For other custom values
}
