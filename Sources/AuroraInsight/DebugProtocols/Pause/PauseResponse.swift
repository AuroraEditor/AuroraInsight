//
//  PauseResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `pause` request. This is just an acknowledgement, so no body field is required.
struct PauseResponse: Codable {
    var response: Response
}
