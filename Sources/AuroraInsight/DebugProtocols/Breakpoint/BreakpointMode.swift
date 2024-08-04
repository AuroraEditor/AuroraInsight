//
//  BreakpointMode.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//

/// A `BreakpointMode` is provided as a option when setting breakpoints on sources or instructions.
struct BreakpointMode: Codable {
    /// The internal ID of the mode. This value is passed to the `setBreakpoints` request.
    var mode: String;
    ///The name of the breakpoint mode. This is shown in the UI.
    var label: String;
    /// A help text providing additional information about the breakpoint mode. This string is typically shown as a hover and can be translated.
    var description: String;
    /// Describes one or more type of breakpoint this mode applies to.
    var appliesTo: [BreakpointModeApplicability];
}
