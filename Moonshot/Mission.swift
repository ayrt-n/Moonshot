//
//  Mission.swift
//  Moonshot
//
//  Created by Ayrton Parkinson on 2024/07/19.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
