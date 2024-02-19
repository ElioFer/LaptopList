//
//  LaptopListViewModel.swift
//  LaptopList
//
//  Created by Elio Fernandez on 18/02/2024.
//

import Foundation

final class LaptopListViewModel: ObservableObject {
    
    @Published var laptops: [LaptopDataModel] = []
    
    func getLaptops() async {
        do {
            let laptops = try await RequestApi.getLaptopsData()
            self.laptops = laptops
        } catch(let error) {
            print(error.localizedDescription)
        }
    }
}
