//
//  ReverseContinueRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// ReverseContinue request; value of command field is 'reverseContinue'.
struct ReverseContinueRequest: Codable {
    var request: Request
    var arguments: ReverseContinueArguments

    struct ReverseContinueArguments: Codable {
        /// Specifies the active thread. If the debug adapter supports single thread execution and the `singleThread` argument is true, only the thread with this ID is resumed.
        var threadId: Int
        /// If this flag is true, backward execution is resumed only for the thread with given `threadId`.
        var singleThread: Bool?
    }
}
