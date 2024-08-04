//
//  BreakpointModeApplicability.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/**
 * Describes one or more type of breakpoint a `BreakpointMode` applies to. This is a non-exhaustive enumeration and may expand as future breakpoint types are added.
 * Values:
 * 'source': In `SourceBreakpoint`s
 * 'exception': In exception breakpoints applied in the `ExceptionFilterOptions`
 * 'data': In data breakpoints requested in the `DataBreakpointInfo` request
 * 'instruction': In `InstructionBreakpoint`s
 * etc.
 */
enum BreakpointModeApplicability: Codable, Equatable {
    case source
    case exception
    case data
    case instruction
    case other(String)

    init(_ value: String) {
        switch value {
        case "source":
            self = .source
        case "exception":
            self = .exception
        case "data":
            self = .data
        case "instruction":
            self = .instruction
        default:
            self = .other(value)
        }
    }
    
    var rawValue: String {
        switch self {
        case .source:
            return "source"
        case .exception:
            return "exception"
        case .data:
            return "data"
        case .instruction:
            return "instruction"
        case .other(let value):
            return value
        }
    }
}
