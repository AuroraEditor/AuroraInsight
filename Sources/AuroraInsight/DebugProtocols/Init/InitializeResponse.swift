//
//  InitializeResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `initialize` request.
struct InitializeResponse: Codable {
    var response: Response
    /// The capabilities of this debug adapter.
    var body: Capabilities?
}
