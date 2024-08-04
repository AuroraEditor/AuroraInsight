//
//  CancelResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/// Response to `cancel` request. This is just an acknowledgement, so no body field is required.
struct CancelResponse: Codable {
    var response: Response
}
