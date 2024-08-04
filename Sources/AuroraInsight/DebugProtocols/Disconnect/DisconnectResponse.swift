//
//  DisconnectResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `disconnect` request. This is just an acknowledgement, so no body field is required.
struct DisconnectResponse: Codable {
    var response: Response
}
