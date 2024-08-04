//
//  ExceptionDetails.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Detailed information about an exception that has occurred.
struct ExceptionDetails: Codable {
    /// Message contained in the exception.
    var message: String?
    /// Short type name of the exception object.
    var typeName: String?
    /// Fully-qualified type name of the exception object.
    var fullTypeName: String?
    /// An expression that can be evaluated in the current scope to obtain the exception object.
    var evaluateName: String?
    /// Stack trace at the time the exception was thrown.
    var stackTrace: String?
    /// Details of the exception contained by this exception, if any.
    var innerException: [ExceptionDetails]?
}
