//
//  AttachResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `attach` request. This is just an acknowledgement, so no body field is required.
struct AttachResponse: Codable {
    var response: Response
}
