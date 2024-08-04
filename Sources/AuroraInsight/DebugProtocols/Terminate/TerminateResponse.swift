//
//  TerminateResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `terminate` request. This is just an acknowledgement, so no body field is required.
struct TerminateResponse: Codable {
    var response: Response
}
