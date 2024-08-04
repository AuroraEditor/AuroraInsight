//
//  StartDebuggingResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `startDebugging` request. This is just an acknowledgement, so no body field is required.
struct StartDebuggingResponse: Codable {
    var response: Response
}
