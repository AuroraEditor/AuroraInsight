//
//  ReadMemoryRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// ReadMemory request; value of command field is 'readMemory'.
struct ReadMemoryRequest: Codable {
    var request: Request
    var arguments: ReadMemoryArguments

    struct ReadMemoryArguments: Codable {
        /// Memory reference to the base location from which data should be read.
        var memoryReference: String
        /// Offset (in bytes) to be applied to the reference location before reading data.
        var offset: Int?
        /// Number of bytes to read at the specified location and offset.
        var count: Int
    }
}
