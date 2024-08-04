//
//  ExceptionPathSegment.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/// An `ExceptionPathSegment` represents a segment in a path that is used to match leafs or nodes in a tree of exceptions.
/// If a segment consists of more than one name, it matches the names provided if `negate` is false or missing,
/// or it matches anything except the names provided if `negate` is true.
struct ExceptionPathSegment: Codable {
    /// If false or missing this segment matches the names provided, otherwise it matches anything except the names provided.
    var negate: Bool?
    /// Depending on the value of `negate` the names that should match or not match.
    var names: [String]
}

