//
//  Scope.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// A `Scope` is a named container for variables. Optionally a scope can map to a source or a range within a source.
struct Scope: Codable {
    /// Name of the scope such as 'Arguments', 'Locals', or 'Registers'. This string is shown in the UI as is and can be translated.
    var name: String
    /// A hint for how to present this scope in the UI. If this attribute is missing, the scope is shown with a generic UI.
    /// Values:
    /// 'arguments': Scope contains method arguments.
    /// 'locals': Scope contains local variables.
    /// 'registers': Scope contains registers. Only a single `registers` scope should be returned from a `scopes` request.
    /// etc.
    var presentationHint: ScopePresentationHint?
    /// The variables of this scope can be retrieved by passing the value of `variablesReference` to the `variables` request as long as execution remains suspended. See 'Lifetime of Object References' in the Overview section for details.
    var variablesReference: Int
    /// The number of named variables in this scope.
    /// The client can use this information to present the variables in a paged UI and fetch them in chunks.
    var namedVariables: Int?
    /// The number of indexed variables in this scope.
    /// The client can use this information to present the variables in a paged UI and fetch them in chunks.
    var indexedVariables: Int?
    /// If true, the number of variables in this scope is large or expensive to retrieve.
    var expensive: Bool
    /// The source for this scope.
    var source: Source?
    /// The start line of the range covered by this scope.
    var line: Int?
    /// Start position of the range covered by the scope. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based.
    var column: Int?
    /// The end line of the range covered by this scope.
    var endLine: Int?
    /// End position of the range covered by the scope. It is measured in UTF-16 code units and the client capability `columnsStartAt1` determines whether it is 0- or 1-based.
    var endColumn: Int?
}
