//
//  ModulesRequest.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Modules request; value of command field is 'modules'.
struct ModulesRequest: Codable {
    var request: Request
    var arguments: ModulesArguments

    struct ModulesArguments: Codable {
        /// The index of the first module to return; if omitted modules start at 0.
        var startModule: Int?
        /// The number of modules to return. If `moduleCount` is not specified or 0, all modules are returned.
        var moduleCount: Int?
    }
}
