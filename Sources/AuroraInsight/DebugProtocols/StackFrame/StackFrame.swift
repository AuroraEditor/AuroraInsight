//
//  StackFrame.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// A Stackframe contains the source location.
struct StackFrame: Codable {
    /// An identifier for the stack frame. It must be unique across all threads.
    /// This id can be used to retrieve the scopes of the frame with the `scopes` request or to restart the execution of a stack frame.
    var id: Int
    /// The name of the stack frame, typically a method name.
    var name: String
    /// The source of the frame.
    var source: Source?
    /// The line within the source of the frame. If the source attribute is missing or doesn't exist, `line` is 0 and should be ignored by the client.
    var line: Int
    /// Start position of the range covered by the stack frame. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based. If attribute `source` is missing or doesn't exist, `column` is 0 and should be ignored by the client.
    var column: Int
    /// The end line of the range covered by the stack frame.
    var endLine: Int?
    /// End position of the range covered by the stack frame. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based.
    var endColumn: Int?
    /// Indicates whether this frame can be restarted with the `restart` request. Clients should only use this if the debug adapter supports the `restart` request and the corresponding capability `supportsRestartRequest` is true. If a debug adapter has this capability, then `canRestart` defaults to `true` if the property is absent.
    var canRestart: Bool?
    /// A memory reference for the current instruction pointer in this frame.
    var instructionPointerReference: String?
    /// The module associated with this frame, if any.
    var moduleId: ModuleID?
    /// A hint for how to present this frame in the UI.
    /// A value of `label` can be used to indicate that the frame is an artificial frame that is used as a visual label or separator. A value of `subtle` can be used to change the appearance of a frame in a 'subtle' way.
    var presentationHint: FramePresentationHint?
}
