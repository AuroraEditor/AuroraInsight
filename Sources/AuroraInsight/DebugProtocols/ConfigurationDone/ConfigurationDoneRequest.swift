//
//  ConfigurationDoneRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// ConfigurationDone request; value of command field is 'configurationDone'.
/// This request indicates that the client has finished initialization of the debug adapter.
struct ConfigurationDoneRequest: Codable {
    var request: Request
    var arguments: ConfigurationDoneArguments?

    struct ConfigurationDoneArguments: Codable {
    }
}
