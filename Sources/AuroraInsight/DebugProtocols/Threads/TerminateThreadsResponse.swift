//
//  TerminateThreadsResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `terminateThreads` request. This is just an acknowledgement, no body field is required.
struct TerminateThreadsResponse: Codable {
    var response: Response
}
