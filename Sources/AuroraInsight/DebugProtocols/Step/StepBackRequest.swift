//
//  StepBackRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// StepBack request; value of command field is 'stepBack'.
struct StepBackRequest: Codable {
    var request: Request
    var arguments: StepBackArguments

    struct StepBackArguments: Codable {
        /// Specifies the thread for which to resume execution for one step backwards.
        var threadId: Int
        /// If this flag is true, all other suspended threads are not resumed.
        var singleThread: Bool?
        /// Stepping granularity to step.
        var granularity: String?
    }
}
