//
//  ColumnType.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Datatype of values in this column. Defaults to `string` if not specified.
enum ColumnType: String, Codable {
    case string
    case number
    case boolean
    case unixTimestampUTC
}
