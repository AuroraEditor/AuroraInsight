//
//  Source.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// A `Source` is a descriptor for source code.
/// It is returned from the debug adapter as part of a `StackFrame` and it is used by clients when specifying breakpoints.
struct Source: Codable {
    /// The short name of the source. Every source returned from the debug adapter has a name.
    /// When sending a source to the debug adapter this name is optional.
    var name: String?
    /// The path of the source to be shown in the UI.
    /// It is only used to locate and load the content of the source if no `sourceReference` is specified (or its value is 0).
    var path: String?
    /// If the value > 0 the contents of the source must be retrieved through the `source` request (even if a path is specified).
    /// Since a `sourceReference` is only valid for a session, it can not be used to persist a source.
    /// The value should be less than or equal to 2147483647 (2^31-1).
    var sourceReference: Int?
    /// A hint for how to present the source in the UI.
    /// A value of `deemphasize` can be used to indicate that the source is not available or that it is skipped on stepping.
    var presentationHint: PresentationHint?
    /// The origin of this source. For example, 'internal module', 'inlined content from source map', etc.
    var origin: String?
    /// A list of sources that are related to this source. These may be the source that generated this source.
    var sources: [Source]?
    /// Additional data that a debug adapter might want to loop through the client.
    /// The client should leave the data intact and persist it across sessions. The client should not interpret the data.
    var adapterData: AnyCodable?
    /// The checksums associated with this file.
    var checksums: [Checksum]?
}
