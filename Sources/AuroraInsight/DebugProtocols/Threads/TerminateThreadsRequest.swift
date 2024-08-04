//
//  TerminateThreadsRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// TerminateThreads request; value of command field is 'terminateThreads'.
struct TerminateThreadsRequest: Codable {
    var request: Request
    var arguments: TerminateThreadsArguments

    struct TerminateThreadsArguments: Codable {
        /// Ids of threads to be terminated.
        var threadIds: [Int]?
    }
}
