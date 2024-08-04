//
//  Module.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// A Module object represents a row in the modules view.
/// The `id` attribute identifies a module in the modules view and is used in a `module` event for identifying a module for adding, updating or deleting.
/// The `name` attribute is used to minimally render the module in the UI.
/// Additional attributes can be added to the module. They show up in the module view if they have a corresponding `ColumnDescriptor`.
/// To avoid an unnecessary proliferation of additional attributes with similar semantics but different names, we recommend to re-use attributes from the 'recommended' list below first, and only introduce new attributes if nothing appropriate could be found.
struct Module: Codable {
    /// Unique identifier for the module.
    var id: ModuleID
    /// A name of the module.
    var name: String
    /// Logical full path to the module. The exact definition is implementation defined, but usually this would be a full path to the on-disk file for the module.
    var path: String?
    /// True if the module is optimized.
    var isOptimized: Bool?
    /// True if the module is considered 'user code' by a debugger that supports 'Just My Code'.
    var isUserCode: Bool?
    /// Version of Module.
    var version: String?
    /// User-understandable description of if symbols were found for the module (ex: 'Symbols Loaded', 'Symbols not found', etc.)
    var symbolStatus: String?
    /// Logical full path to the symbol file. The exact definition is implementation defined.
    var symbolFilePath: String?
    /// Module created or modified, encoded as a RFC 3339 timestamp.
    var dateTimeStamp: String?
    /// Address range covered by this module.
    var addressRange: String?
}
