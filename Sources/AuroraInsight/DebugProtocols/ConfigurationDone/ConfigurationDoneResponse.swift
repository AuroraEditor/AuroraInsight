//
//  ConfigurationDoneResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `configurationDone` request. This is just an acknowledgement, so no body field is required.
struct ConfigurationDoneResponse: Codable {
    var response: Response
}
