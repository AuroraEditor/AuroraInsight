//
//  RestartResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `restart` request. This is just an acknowledgement, so no body field is required.
struct RestartResponse: Codable {
    var response: Response
}
