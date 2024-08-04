//
//  CompletionItem.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// `CompletionItems` are the suggestions returned from the `completions` request.
struct CompletionItem: Codable {
    /// The label of this completion item. By default this is also the text that is inserted when selecting this completion.
    var label: String
    /// If text is returned and not an empty string, then it is inserted instead of the label.
    var text: String?
    /// A string that should be used when comparing this item with other items. If not returned or an empty string, the `label` is used instead.
    var sortText: String?
    /// A human-readable string with additional information about this item, like type or symbol information.
    var detail: String?
    /// The item's type. Typically the client uses this information to render the item in the UI with an icon.
    var type: CompletionItemType?
    /// Start position (within the `text` attribute of the `completions` request) where the completion text is added.
    var start: Int?
    /// Length determines how many characters are overwritten by the completion text and it is measured in UTF-16 code units.
    var length: Int?
    /// Determines the start of the new selection after the text has been inserted (or replaced).
    var selectionStart: Int?
    /// Determines the length of the new selection after the text has been inserted (or replaced).
    var selectionLength: Int?
}
