//
//  Response.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/// Response for a request.
struct Response: Codable {
    var protocolMessage: ProtocolMessage
    
    /// Sequence number of the corresponding request.
    var requestSeq: Int
    
    /// Outcome of the request.
    /// If true, the request was successful and the `body` attribute may contain the result of the request.
    /// If the value is false, the attribute `message` contains the error in short form and the `body` may contain additional information (see `ErrorResponse.body.error`).
    var success: Bool
    
    /// The command requested.
    var command: String
    
    /// Contains the raw error in short form if `success` is false.
    /// This raw error might be interpreted by the client and is not shown in the UI.
    /// Some predefined values exist.
    /// Values:
    /// 'cancelled': the request was cancelled.
    /// 'notStopped': the request may be retried once the adapter is in a 'stopped' state.
    /// etc.
    var message: String?
    
    /// Contains request result if success is true and error details if success is false.
    var body: AnyCodable?
}
