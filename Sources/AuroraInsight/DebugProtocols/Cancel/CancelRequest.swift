//
//  CancelRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/// Cancel request; value of command field is 'cancel'.
/// The `cancel` request is used by the client in two situations:
/// - to indicate that it is no longer interested in the result produced by a specific request issued earlier
/// - to cancel a progress sequence.
/// Clients should only call this request if the corresponding capability `supportsCancelRequest` is true.
/// This request has a hint characteristic: a debug adapter can only be expected to make a 'best effort' in honoring this request but there are no guarantees.
/// The `cancel` request may return an error if it could not cancel an operation but a client should refrain from presenting this error to end users.
/// The request that got cancelled still needs to send a response back. This can either be a normal result (`success` attribute true) or an error response (`success` attribute false and the `message` set to `cancelled`).
/// Returning partial results from a cancelled request is possible but please note that a client has no generic way for detecting that a response is partial or not.
/// The progress that got cancelled still needs to send a `progressEnd` event back.
/// A client should not assume that progress just got cancelled after sending the `cancel` request.
struct CancelRequest: Codable {
    var request: Request
    
    /// Arguments for `cancel` request.
    struct CancelArguments: Codable {
        /// The ID (attribute `seq`) of the request to cancel. If missing no request is cancelled.
        /// Both a `requestId` and a `progressId` can be specified in one request.
        var requestId: Int?
        
        /// The ID (attribute `progressId`) of the progress to cancel. If missing no progress is cancelled.
        /// Both a `requestId` and a `progressId` can be specified in one request.
        var progressId: String?
    }
    
    var arguments: CancelArguments?
}
