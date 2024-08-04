//
//  NextRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Next request; value of command field is 'next'.
/// The request executes one step (in the given granularity) for the specified thread and allows all other threads to run freely by resuming them.
struct NextRequest: Codable {
    var request: Request
    var arguments: NextArguments

    struct NextArguments: Codable {
        /// Specifies the thread for which to resume execution for one step (of the given granularity).
        var threadId: Int
        /// If this flag is true, all other suspended threads are not resumed.
        var singleThread: Bool?
        /// Stepping granularity. If no granularity is specified, a granularity of `statement` is assumed.
        var granularity: SteppingGranularity?
    }
}
