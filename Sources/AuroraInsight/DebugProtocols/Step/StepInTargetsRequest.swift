//
//  StepInTargetsRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// StepInTargets request; value of command field is 'stepInTargets'.
struct StepInTargetsRequest: Codable {
    var request: Request
    var arguments: StepInTargetsArguments

    struct StepInTargetsArguments: Codable {
        /// The stack frame for which to retrieve the possible step-in targets.
        var frameId: Int
    }
}
