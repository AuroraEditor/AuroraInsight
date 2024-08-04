//
//  ExceptionInfoResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `exceptionInfo` request.
struct ExceptionInfoResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// ID of the exception that was thrown.
        var exceptionId: String
        /// Descriptive text for the exception.
        var description: String?
        /// Mode that caused the exception notification to be raised.
        var breakMode: ExceptionBreakMode
        /// Detailed information about the exception.
        var details: ExceptionDetails?
    }
}
