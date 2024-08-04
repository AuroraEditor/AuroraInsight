//
//  Variable.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// A Variable is a name/value pair.
/// The `type` attribute is shown if space permits or when hovering over the variable's name.
/// The `kind` attribute is used to render additional properties of the variable, e.g. different icons can be used to indicate that a variable is public or private.
/// If the value is structured (has children), a handle is provided to retrieve the children with the `variables` request.
/// If the number of named or indexed children is large, the numbers should be returned via the `namedVariables` and `indexedVariables` attributes.
/// The client can use this information to present the children in a paged UI and fetch them in chunks.
struct Variable: Codable {
    /// The variable's name.
    var name: String
    /// The variable's value.
    /// This can be a multi-line text, e.g. for a function the body of a function.
    /// For structured variables (which do not have a simple value), it is recommended to provide a one-line representation of the structured object. This helps to identify the structured object in the collapsed state when its children are not yet visible.
    /// An empty string can be used if no value should be shown in the UI.
    var value: String
    /// The type of the variable's value. Typically shown in the UI when hovering over the value.
    /// This attribute should only be returned by a debug adapter if the corresponding capability `supportsVariableType` is true.
    var type: String?
    /// Properties of a variable that can be used to determine how to render the variable in the UI.
    var presentationHint: VariablePresentationHint?
    /// The evaluatable name of this variable which can be passed to the `evaluate` request to fetch the variable's value.
    var evaluateName: String?
    /// If `variablesReference` is > 0, the variable is structured and its children can be retrieved by passing `variablesReference` to the `variables` request as long as execution remains suspended. See 'Lifetime of Object References' in the Overview section for details.
    var variablesReference: Int
    /// The number of named child variables.
    /// The client can use this information to present the children in a paged UI and fetch them in chunks.
    var namedVariables: Int?
    /// The number of indexed child variables.
    /// The client can use this information to present the children in a paged UI and fetch them in chunks.
    var indexedVariables: Int?
    /// A memory reference associated with this variable.
    /// For pointer type variables, this is generally a reference to the memory address contained in the pointer.
    /// For executable data, this reference may later be used in a `disassemble` request.
    /// This attribute may be returned by a debug adapter if corresponding capability `supportsMemoryReferences` is true.
    var memoryReference: String?
}
