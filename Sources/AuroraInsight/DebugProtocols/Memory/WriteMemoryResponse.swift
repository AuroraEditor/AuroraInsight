//
//  WriteMemoryResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `writeMemory` request.
struct WriteMemoryResponse: Codable {
    var response: Response
    var body: Body?

    struct Body: Codable {
        /// Offset of the first byte of data successfully written.
        var offset: Int?
        /// Number of bytes that were successfully written.
        var bytesWritten: Int?
    }
}
