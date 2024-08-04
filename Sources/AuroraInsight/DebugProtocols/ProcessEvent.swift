//
//  ProcessEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'process' event type.
/// The event indicates that the debugger has begun debugging a new process. Either one that it has launched, or one that it has attached to.
struct ProcessEvent: Codable {
    var event: String = "process"
    var body: Body

    struct Body: Codable {
        /// The logical name of the process. This is usually the full path to process's executable file. Example: /home/example/myproj/program.js.
        var name: String
        /// The system process id of the debugged process. This property is missing for non-system processes.
        var systemProcessId: Int?
        /// If true, the process is running on the same computer as the debug adapter.
        var isLocalProcess: Bool?
        /// Describes how the debug engine started debugging this process.
        /// 'launch': Process was launched under the debugger.
        /// 'attach': Debugger attached to an existing process.
        /// 'attachForSuspendedLaunch': A project launcher component has launched a new process in a suspended state and then asked the debugger to attach.
        var startMethod: String?
        /// The size of a pointer or address for this process, in bits. This value may be used by clients when formatting addresses for display.
        var pointerSize: Int?
    }
}
