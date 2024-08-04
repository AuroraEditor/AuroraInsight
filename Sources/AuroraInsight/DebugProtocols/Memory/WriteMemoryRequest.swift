//
//  WriteMemoryRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// WriteMemory request; value of command field is 'writeMemory'.
struct WriteMemoryRequest: Codable {
    var request: Request
    var arguments: WriteMemoryArguments

    struct WriteMemoryArguments: Codable {
        /// Memory reference to the base location to which data should be written.
        var memoryReference: String
        /// Offset (in bytes) to be applied to the reference location before writing data.
        var offset: Int?
        /// Bytes to write, encoded using base64.
        var data: String
        /// Property to control partial writes.
        var allowPartial: Bool?
    }
}
