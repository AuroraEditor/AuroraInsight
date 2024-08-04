//
//  ExceptionInfoRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// ExceptionInfo request; value of command field is 'exceptionInfo'.
struct ExceptionInfoRequest: Codable {
    var request: Request
    var arguments: ExceptionInfoArguments

    struct ExceptionInfoArguments: Codable {
        /// Thread for which exception information should be retrieved.
        var threadId: Int
    }
}
