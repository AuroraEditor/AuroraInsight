//
//  ReadMemoryResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `readMemory` request.
struct ReadMemoryResponse: Codable {
    var response: Response
    var body: Body?

    struct Body: Codable {
        /// The address of the first byte of data returned.
        var address: String
        /// The number of unreadable bytes encountered after the last successfully read byte.
        var unreadableBytes: Int?
        /// The bytes read from memory, encoded using base64.
        var data: String?
    }
}
