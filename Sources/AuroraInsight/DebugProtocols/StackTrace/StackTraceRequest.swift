//
//  StackTraceRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// StackTrace request; value of command field is 'stackTrace'.
/// The request returns a stacktrace from the current execution state of a given thread.
struct StackTraceRequest: Codable {
    var request: Request
    var arguments: StackTraceArguments

    struct StackTraceArguments: Codable {
        /// Retrieve the stacktrace for this thread.
        var threadId: Int
        /// The index of the first frame to return; if omitted frames start at 0.
        var startFrame: Int?
        /// The maximum number of frames to return.
        var levels: Int?
        /// Specifies details on how to format the stack frames.
        var format: StackFrameFormat?
    }
}
