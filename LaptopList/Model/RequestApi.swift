//
//  RequestApi.swift
//  LaptopList
//
//  Created by Elio Fernandez on 18/02/2024.
//

import Foundation

final class RequestApi {
    
    static func getLaptopsData() async throws -> [LaptopDataModel] {
        
        let urlString = "https://private-f0eea-mobilegllatam.apiary-mock.com/list"
        
        guard let url = URL(string: urlString) else {
            throw ErrorCases.invalidUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw ErrorCases.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([LaptopDataModel].self, from: data)
        } catch {
            throw ErrorCases.invalidData
        }
    }
}

