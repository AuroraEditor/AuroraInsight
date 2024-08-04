//
//  ModuleID.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Unique identifier for the module.
enum ModuleID: Codable {
    case int(Int)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let intValue = try? container.decode(Int.self) {
            self = .int(intValue)
            return
        }
        if let stringValue = try? container.decode(String.self) {
            self = .string(stringValue)
            return
        }
        throw DecodingError.typeMismatch(ModuleID.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for ModuleID"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .int(let intValue):
            try container.encode(intValue)
        case .string(let stringValue):
            try container.encode(stringValue)
        }
    }
}
