//
//  StackTraceResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `stackTrace` request.
struct StackTraceResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// The frames of the stack frame.
        var stackFrames: [StackFrame]
        /// The total number of frames available.
        var totalFrames: Int?
    }
}
