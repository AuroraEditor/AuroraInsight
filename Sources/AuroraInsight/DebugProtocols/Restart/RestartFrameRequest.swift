//
//  RestartFrameRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// RestartFrame request; value of command field is 'restartFrame'.
/// The request restarts execution of the specified stack frame.
struct RestartFrameRequest: Codable {
    var request: Request
    var arguments: RestartFrameArguments

    struct RestartFrameArguments: Codable {
        /// Restart the stack frame identified by `frameId`. The `frameId` must have been obtained in the current suspended state.
        var frameId: Int
    }
}
