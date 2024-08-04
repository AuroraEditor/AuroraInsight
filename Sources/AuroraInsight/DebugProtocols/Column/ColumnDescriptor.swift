//
//  ColumnDescriptor.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// A `ColumnDescriptor` specifies what module attribute to show in a column of the modules view, how to format it,
/// and what the column's label should be.
/// It is only used if the underlying UI actually supports this level of customization.
struct ColumnDescriptor: Codable {
    /// Name of the attribute rendered in this column.
    var attributeName: String
    /// Header UI label of column.
    var label: String
    /// Format to use for the rendered values in this column. TBD how the format strings looks like.
    var format: String?
    /// Datatype of values in this column. Defaults to `string` if not specified.
    var type: ColumnType?
    /// Width of this column in characters (hint only).
    var width: Int?
}
