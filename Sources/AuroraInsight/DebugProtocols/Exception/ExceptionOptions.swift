//
//  ExceptionOptions.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// An `ExceptionOptions` assigns configuration options to a set of exceptions.
struct ExceptionOptions: Codable {
    /// A path that selects a single or multiple exceptions in a tree. If `path` is missing, the whole tree is selected.
    /// By convention the first segment of the path is a category that is used to group exceptions in the UI.
    var path: [ExceptionPathSegment]?
    /// Condition when a thrown exception should result in a break.
    var breakMode: ExceptionBreakMode
}
