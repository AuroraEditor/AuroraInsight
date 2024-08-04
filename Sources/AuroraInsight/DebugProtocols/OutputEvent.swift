//
//  OutputEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'output' event type.
/// The event indicates that the target has produced some output.
struct OutputEvent: Codable {
    var event: String = "output"
    var body: Body

    struct Body: Codable {
        /// The output category. If not specified or if the category is not understood by the client, `console` is assumed.
        /// Values:
        /// 'console': Show the output in the client's default message UI, e.g. a 'debug console'. This category should only be used for informational output from the debugger (as opposed to the debuggee).
        /// 'important': A hint for the client to show the output in the client's UI for important and highly visible information, e.g. as a popup notification. This category should only be used for important messages from the debugger (as opposed to the debuggee). Since this category value is a hint, clients might ignore the hint and assume the `console` category.
        /// 'stdout': Show the output as normal program output from the debuggee.
        /// 'stderr': Show the output as error program output from the debuggee.
        /// 'telemetry': Send the output to telemetry instead of showing it to the user.
        var category: String?
        /// The output to report.
        var output: String
        /// Support for keeping an output log organized by grouping related messages.
        /// 'start': Start a new group in expanded mode. Subsequent output events are members of the group and should be shown indented.
        /// The `output` attribute becomes the name of the group and is not indented.
        /// 'startCollapsed': Start a new group in collapsed mode. Subsequent output events are members of the group and should be shown indented (as soon as the group is expanded).
        /// The `output` attribute becomes the name of the group and is not indented.
        /// 'end': End the current group and decrease the indentation of subsequent output events.
        /// A non-empty `output` attribute is shown as the unindented end of the group.
        var group: String?
        /// If an attribute `variablesReference` exists and its value is > 0, the output contains objects which can be retrieved by passing `variablesReference` to the `variables` request as long as execution remains suspended.
        var variablesReference: Int?
        /// The source location where the output was produced.
        var source: Source?
        /// The source location's line where the output was produced.
        var line: Int?
        /// The position in `line` where the output was produced. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based.
        var column: Int?
        /// Additional data to report. For the `telemetry` category the data is sent to telemetry, for the other categories the data is shown in JSON format.
        var data: AnyCodable?
    }
}
