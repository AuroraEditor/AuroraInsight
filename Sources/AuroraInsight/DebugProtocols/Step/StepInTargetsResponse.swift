//
//  StepInTargetsResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `stepInTargets` request.
struct StepInTargetsResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// The possible step-in targets of the specified source location.
        var targets: [StepInTarget]
    }
}
