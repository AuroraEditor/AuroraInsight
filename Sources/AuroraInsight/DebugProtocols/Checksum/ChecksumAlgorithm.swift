//
//  ChecksumAlgorithm.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Names of checksum algorithms that may be supported by a debug adapter.
enum ChecksumAlgorithm: String, Codable {
    case MD5
    case SHA1
    case SHA256
    case timestamp
}
