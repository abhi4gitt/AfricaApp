//
//  VideoModel.swift
//  Africa
//
//  Created by Abhishek on 22/04/25.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
