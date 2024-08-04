//
//  MessageType.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

enum MessageType: Equatable, Codable {
    case request
    case response
    case event
    case other(String)
    
    init(_ value: String) {
        switch value {
        case "request":
            self = .request
        case "response":
            self = .response
        case "event":
            self = .event
        default:
            self = .other(value)
        }
    }
    
    var rawValue: String {
        switch self {
        case .request:
            return "request"
        case .response:
            return "response"
        case .event:
            return "event"
        case .other(let value):
            return value
        }
    }
}
