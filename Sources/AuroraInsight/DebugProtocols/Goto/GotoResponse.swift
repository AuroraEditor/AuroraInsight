//
//  GotoResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `goto` request. This is just an acknowledgement, so no body field is required.
struct GotoResponse: Codable {
    var response: Response
}
