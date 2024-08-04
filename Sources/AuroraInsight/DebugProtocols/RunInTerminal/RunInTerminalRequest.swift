//
//  RunInTerminalRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// RunInTerminal request; value of command field is 'runInTerminal'.
/// This request is sent from the debug adapter to the client to run a command in a terminal.
/// This is typically used to launch the debuggee in a terminal provided by the client.
/// This request should only be called if the corresponding client capability `supportsRunInTerminalRequest` is true.
struct RunInTerminalRequest: Codable {
    var request: Request
    var arguments: RunInTerminalRequestArguments

    struct RunInTerminalRequestArguments: Codable {
        /// What kind of terminal to launch. Defaults to `integrated` if not specified.
        var kind: String?
        /// Title of the terminal.
        var title: String?
        /// Working directory for the command. For non-empty, valid paths this typically results in execution of a change directory command.
        var cwd: String
        /// List of arguments. The first argument is the command to run.
        var args: [String]
        /// Environment key-value pairs that are added to or removed from the default environment.
        var env: [String: String?]?
        /// This property should only be set if the corresponding capability `supportsArgsCanBeInterpretedByShell` is true. If the client uses an intermediary shell to launch the application, then the client must not attempt to escape characters with special meanings for the shell. The user is fully responsible for escaping as needed and that arguments using special characters may not be portable across shells.
        var argsCanBeInterpretedByShell: Bool?
    }
}
