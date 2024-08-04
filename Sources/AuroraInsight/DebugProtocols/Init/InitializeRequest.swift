//
//  InitializeRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Initialize request; value of command field is 'initialize'.
/// The `initialize` request is sent as the first request from the client to the debug adapter in order to configure it with client capabilities and to retrieve capabilities from the debug adapter.
struct InitializeRequest: Codable {
    var request: Request
    var arguments: InitializeRequestArguments

    struct InitializeRequestArguments: Codable {
        /// The ID of the client using this adapter.
        var clientID: String?
        /// The human-readable name of the client using this adapter.
        var clientName: String?
        /// The ID of the debug adapter.
        var adapterID: String
        /// The ISO-639 locale of the client using this adapter, e.g. en-US or de-CH.
        var locale: String?
        /// If true all line numbers are 1-based (default).
        var linesStartAt1: Bool?
        /// If true all column numbers are 1-based (default).
        var columnsStartAt1: Bool?
        /// Determines in what format paths are specified. The default is `path`, which is the native format.
        var pathFormat: String?
        /// Client supports the `type` attribute for variables.
        var supportsVariableType: Bool?
        /// Client supports the paging of variables.
        var supportsVariablePaging: Bool?
        /// Client supports the `runInTerminal` request.
        var supportsRunInTerminalRequest: Bool?
        /// Client supports memory references.
        var supportsMemoryReferences: Bool?
        /// Client supports progress reporting.
        var supportsProgressReporting: Bool?
        /// Client supports the `invalidated` event.
        var supportsInvalidatedEvent: Bool?
        /// Client supports the `memory` event.
        var supportsMemoryEvent: Bool?
        /// Client supports the `argsCanBeInterpretedByShell` attribute on the `runInTerminal` request.
        var supportsArgsCanBeInterpretedByShell: Bool?
        /// Client supports the `startDebugging` request.
        var supportsStartDebuggingRequest: Bool?
    }
}
