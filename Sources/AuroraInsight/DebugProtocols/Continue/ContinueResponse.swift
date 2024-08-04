//
//  ContinueResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `continue` request.
struct ContinueResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// The value true (or a missing property) signals to the client that all threads have been resumed. The value false indicates that not all threads were resumed.
        var allThreadsContinued: Bool?
    }
}
