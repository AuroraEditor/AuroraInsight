//
//  ExceptionBreakMode.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// This enumeration defines all possible conditions when a thrown exception should result in a break.
enum ExceptionBreakMode: String, Codable {
    case never
    case always
    case unhandled
    case userUnhandled
}
