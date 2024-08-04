//
//  StepOutRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// StepOut request; value of command field is 'stepOut'.
struct StepOutRequest: Codable {
    var request: Request
    var arguments: StepOutArguments

    struct StepOutArguments: Codable {
        /// Specifies the thread for which to resume execution for one step-out.
        var threadId: Int
        /// If this flag is true, all other suspended threads are not resumed.
        var singleThread: Bool?
        /// Stepping granularity.
        var granularity: String?
    }
}
