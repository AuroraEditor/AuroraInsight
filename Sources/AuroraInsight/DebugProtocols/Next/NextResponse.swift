//
//  NextResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `next` request. This is just an acknowledgement, so no body field is required.
struct NextResponse: Codable {
    var response: Response
}
