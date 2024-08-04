//
//  Checksum.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// The checksum of an item calculated by the specified algorithm.
struct Checksum: Codable {
    /// The algorithm used to calculate this checksum.
    var algorithm: ChecksumAlgorithm
    /// Value of the checksum, encoded as a hexadecimal value.
    var checksum: String
}
