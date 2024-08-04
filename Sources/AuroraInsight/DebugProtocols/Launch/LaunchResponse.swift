//
//  LaunchResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `launch` request. This is just an acknowledgement, so no body field is required.
struct LaunchResponse: Codable {
    var response: Response
}
