//
//  Message.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// A structured message object. Used to return errors from requests.
struct Message: Codable {
    /// Unique (within a debug adapter implementation) identifier for the message. The purpose of these error IDs is to help extension authors that have the requirement that every user visible error message needs a corresponding error number, so that users or customer support can find information about the specific error more easily.
    var id: Int
    /// A format string for the message. Embedded variables have the form `{name}`.
    /// If variable name starts with an underscore character, the variable does not contain user data (PII) and can be safely used for telemetry purposes.
    var format: String
    /// An object used as a dictionary for looking up the variables in the format string.
    var variables: [String: String]?
    /// If true send to telemetry.
    var sendTelemetry: Bool?
    /// If true show user.
    var showUser: Bool?
    /// A URL where additional information about this message can be found.
    var url: String?
    /// A label that is presented to the user as the UI for opening the URL.
    var urlLabel: String?
}
