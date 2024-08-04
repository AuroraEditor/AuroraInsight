//
//  ContinueRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Continue request; value of command field is 'continue'.
/// The request resumes execution of all threads. If the debug adapter supports single thread execution (see capability `supportsSingleThreadExecutionRequests`), setting the `singleThread` argument to true resumes only the specified thread.
struct ContinueRequest: Codable {
    var request: Request
    var arguments: ContinueArguments

    struct ContinueArguments: Codable {
        /// Specifies the active thread. If the debug adapter supports single thread execution (see `supportsSingleThreadExecutionRequests`) and the argument `singleThread` is true, only the thread with this ID is resumed.
        var threadId: Int
        /// If this flag is true, execution is resumed only for the thread with given `threadId`.
        var singleThread: Bool?
    }
}
