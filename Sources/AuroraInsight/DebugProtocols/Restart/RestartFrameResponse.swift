//
//  RestartFrameResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `restartFrame` request. This is just an acknowledgement, so no body field is required.
struct RestartFrameResponse: Codable {
    var response: Response
}
