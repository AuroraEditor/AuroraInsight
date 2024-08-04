//
//  ErrorResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/// On error (whenever `success` is false), the body can provide more details.
struct ErrorResponse: Codable {
    var response: Response
    
    struct ErrorBody: Codable {
        /// A structured error message.
        var error: Message?
    }
    
    var body: ErrorBody
}
