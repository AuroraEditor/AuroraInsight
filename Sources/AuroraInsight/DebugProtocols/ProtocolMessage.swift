//
//  ProtocolMessage.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/// Base class of requests, responses, and events.
struct ProtocolMessage: Codable {
    /// Sequence number of the message (also known as message ID). The `seq`
    /// for the first message sent by a client or debug adapter is 1, and for
    /// each subsequent message is 1 greater than the previous
    /// message sent by that actor. `seq` can be used to order
    /// requests, responses, and events, and to associate requests
    /// with their corresponding responses. For protocol messages
    /// of type `request` the sequence number can be used to cancel the request.
    var seq: Int
    /// Message type.
    /// Values: 'request', 'response', 'event', etc.
    var type: MessageType
    
    init(seq: Int, type: String) {
        self.seq = seq
        self.type = MessageType(type)
    }
}
