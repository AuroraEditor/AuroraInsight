//
//  DataBreakpointAccessType.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// This enumeration defines all possible access types for data breakpoints.
enum DataBreakpointAccessType: String, Codable {
    case read = "read"
    case write = "write"
    case readWrite = "readWrite"
}
