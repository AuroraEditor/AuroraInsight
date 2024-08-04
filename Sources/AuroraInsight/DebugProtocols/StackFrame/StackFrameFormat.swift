//
//  StackFrameFormat.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Provides formatting information for a stack frame.
struct StackFrameFormat: Codable {
    /// Display the value in hex.
    var hex: Bool?
    /// Displays parameters for the stack frame.
    var parameters: Bool?
    /// Displays the types of parameters for the stack frame.
    var parameterTypes: Bool?
    /// Displays the names of parameters for the stack frame.
    var parameterNames: Bool?
    /// Displays the values of parameters for the stack frame.
    var parameterValues: Bool?
    /// Displays the line number of the stack frame.
    var line: Bool?
    /// Displays the module of the stack frame.
    var module: Bool?
    /// Includes all stack frames, including those the debug adapter might otherwise hide.
    var includeAll: Bool?
}
