//
//  LaptopDataModel.swift
//  LaptopList
//
//  Created by Elio Fernandez on 18/02/2024.
//

import Foundation

struct LaptopDataModel: Hashable, Codable {
    let title: String
    let description: String
    let imageURL: String
    
    enum CodingKeys: String, CodingKey {
        case title
        case description
        case imageURL = "image"
    }
}
