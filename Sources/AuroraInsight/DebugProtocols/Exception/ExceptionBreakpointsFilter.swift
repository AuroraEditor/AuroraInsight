//
//  ExceptionBreakpointsFilter.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// An `ExceptionBreakpointsFilter` is shown in the UI as a filter option for configuring how exceptions are dealt with.
struct ExceptionBreakpointsFilter: Codable {
    /// The internal ID of the filter option. This value is passed to the `setExceptionBreakpoints` request.
    var filter: String
    /// The name of the filter option. This is shown in the UI.
    var label: String
    /// A help text providing additional information about the exception filter. This string is typically shown as a hover and can be translated.
    var description: String?
    /// Initial value of the filter option. If not specified a value false is assumed.
    var `default`: Bool?
    /// Controls whether a condition can be specified for this filter option. If false or missing, a condition can not be set.
    var supportsCondition: Bool?
    /// A help text providing information about the condition. This string is shown as the placeholder text for a text box and can be translated.
    var conditionDescription: String?
}
