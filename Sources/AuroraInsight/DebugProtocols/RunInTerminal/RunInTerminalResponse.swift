//
//  RunInTerminalResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `runInTerminal` request.
struct RunInTerminalResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// The process ID. The value should be less than or equal to 2147483647 (2^31-1).
        var processId: Int?
        /// The process ID of the terminal shell. The value should be less than or equal to 2147483647 (2^31-1).
        var shellProcessId: Int?
    }
}
