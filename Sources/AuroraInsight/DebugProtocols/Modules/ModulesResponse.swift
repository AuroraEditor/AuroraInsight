//
//  ModulesResponse.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// Response to `modules` request.
struct ModulesResponse: Codable {
    var response: Response
    var body: Body

    struct Body: Codable {
        /// All modules or range of modules.
        var modules: [Module]
        /// The total number of modules available.
        var totalModules: Int?
    }
}
