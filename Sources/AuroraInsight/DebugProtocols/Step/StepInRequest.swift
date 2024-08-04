//
//  StepInRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// StepIn request; value of command field is 'stepIn'.
struct StepInRequest: Codable {
    var request: Request
    var arguments: StepInArguments

    struct StepInArguments: Codable {
        /// Specifies the thread for which to resume execution for one step-into.
        var threadId: Int
        /// If this flag is true, all other suspended threads are not resumed.
        var singleThread: Bool?
        /// Id of the target to step into.
        var targetId: Int?
        /// Stepping granularity.
        var granularity: String?
    }
}
