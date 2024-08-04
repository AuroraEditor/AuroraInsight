//
//  ModuleEvent.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Event message for 'module' event type.
/// The event indicates that some information about a module has changed.
struct ModuleEvent: Codable {
    var event: String = "module"
    var body: Body

    struct Body: Codable {
        /// The reason for the event.
        var reason: String
        /// The new, changed, or removed module. In case of `removed` only the module id is used.
        var module: Module
    }
}
