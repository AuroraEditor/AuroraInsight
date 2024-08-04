//
//  Capabilities.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


import Foundation

/// Information about the capabilities of a debug adapter.
struct Capabilities: Codable {
    /// The debug adapter supports the `configurationDone` request.
    var supportsConfigurationDoneRequest: Bool?
    /// The debug adapter supports function breakpoints.
    var supportsFunctionBreakpoints: Bool?
    /// The debug adapter supports conditional breakpoints.
    var supportsConditionalBreakpoints: Bool?
    /// The debug adapter supports breakpoints that break execution after a specified number of hits.
    var supportsHitConditionalBreakpoints: Bool?
    /// The debug adapter supports a (side effect free) `evaluate` request for data hovers.
    var supportsEvaluateForHovers: Bool?
    /// Available exception filter options for the `setExceptionBreakpoints` request.
    var exceptionBreakpointFilters: [ExceptionBreakpointsFilter]?
    /// The debug adapter supports stepping back via the `stepBack` and `reverseContinue` requests.
    var supportsStepBack: Bool?
    /// The debug adapter supports setting a variable to a value.
    var supportsSetVariable: Bool?
    /// The debug adapter supports restarting a frame.
    var supportsRestartFrame: Bool?
    /// The debug adapter supports the `gotoTargets` request.
    var supportsGotoTargetsRequest: Bool?
    /// The debug adapter supports the `stepInTargets` request.
    var supportsStepInTargetsRequest: Bool?
    /// The debug adapter supports the `completions` request.
    var supportsCompletionsRequest: Bool?
    /// The set of characters that should trigger completion in a REPL. If not specified, the UI should assume the `.` character.
    var completionTriggerCharacters: [String]?
    /// The debug adapter supports the `modules` request.
    var supportsModulesRequest: Bool?
    /// The set of additional module information exposed by the debug adapter.
    var additionalModuleColumns: [ColumnDescriptor]?
    /// Checksum algorithms supported by the debug adapter.
    var supportedChecksumAlgorithms: [ChecksumAlgorithm]?
    /// The debug adapter supports the `restart` request. In this case a client should not implement `restart` by terminating and relaunching the adapter but by calling the `restart` request.
    var supportsRestartRequest: Bool?
    /// The debug adapter supports `exceptionOptions` on the `setExceptionBreakpoints` request.
    var supportsExceptionOptions: Bool?
    /// The debug adapter supports a `format` attribute on the `stackTrace`, `variables`, and `evaluate` requests.
    var supportsValueFormattingOptions: Bool?
    /// The debug adapter supports the `exceptionInfo` request.
    var supportsExceptionInfoRequest: Bool?
    /// The debug adapter supports the `terminateDebuggee` attribute on the `disconnect` request.
    var supportTerminateDebuggee: Bool?
    /// The debug adapter supports the `suspendDebuggee` attribute on the `disconnect` request.
    var supportSuspendDebuggee: Bool?
    /// The debug adapter supports the delayed loading of parts of the stack, which requires that both the `startFrame` and `levels` arguments and the `totalFrames` result of the `stackTrace` request are supported.
    var supportsDelayedStackTraceLoading: Bool?
    /// The debug adapter supports the `loadedSources` request.
    var supportsLoadedSourcesRequest: Bool?
    /// The debug adapter supports log points by interpreting the `logMessage` attribute of the `SourceBreakpoint`.
    var supportsLogPoints: Bool?
    /// The debug adapter supports the `terminateThreads` request.
    var supportsTerminateThreadsRequest: Bool?
    /// The debug adapter supports the `setExpression` request.
    var supportsSetExpression: Bool?
    /// The debug adapter supports the `terminate` request.
    var supportsTerminateRequest: Bool?
    /// The debug adapter supports data breakpoints.
    var supportsDataBreakpoints: Bool?
    /// The debug adapter supports the `readMemory` request.
    var supportsReadMemoryRequest: Bool?
    /// The debug adapter supports the `writeMemory` request.
    var supportsWriteMemoryRequest: Bool?
    /// The debug adapter supports the `disassemble` request.
    var supportsDisassembleRequest: Bool?
    /// The debug adapter supports the `cancel` request.
    var supportsCancelRequest: Bool?
    /// The debug adapter supports the `breakpointLocations` request.
    var supportsBreakpointLocationsRequest: Bool?
    /// The debug adapter supports the `clipboard` context value in the `evaluate` request.
    var supportsClipboardContext: Bool?
    /// The debug adapter supports stepping granularities (argument `granularity`) for the stepping requests.
    var supportsSteppingGranularity: Bool?
    /// The debug adapter supports adding breakpoints based on instruction references.
    var supportsInstructionBreakpoints: Bool?
    /// The debug adapter supports `filterOptions` as an argument on the `setExceptionBreakpoints` request.
    var supportsExceptionFilterOptions: Bool?
    /// The debug adapter supports the `singleThread` property on the execution requests (`continue`, `next`, `stepIn`, `stepOut`, `reverseContinue`, `stepBack`).
    var supportsSingleThreadExecutionRequests: Bool?
    /// The debug adapter supports the `asAddress` and `bytes` fields in the `dataBreakpointInfo` request.
    var supportsDataBreakpointBytes: Bool?
    /// Modes of breakpoints supported by the debug adapter, such as 'hardware' or 'software'. If present, the client may allow the user to select a mode and include it in its `setBreakpoints` request.
    /// Clients may present the first applicable mode in this array as the 'default' mode in gestures that set breakpoints.
    var breakpointModes: [BreakpointMode]?
}
