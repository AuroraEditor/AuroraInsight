//
//  LaunchRequestArguments.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Arguments for `launch` request. Additional attributes are implementation specific.
struct LaunchRequestArguments: Codable {
    /// If true, the launch request should launch the program without enabling debugging.
    var noDebug: Bool?
    /// Arbitrary data from the previous, restarted session.
    /// The data is sent as the `restart` attribute of the `terminated` event.
    /// The client should leave the data intact.
    var __restart: AnyCodable?
}
