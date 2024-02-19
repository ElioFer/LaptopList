//
//  ContentView.swift
//  LaptopList
//
//  Created by Elio Fernandez on 18/02/2024.
//

import SwiftUI

struct LaptopListView: View {
    
    @StateObject var viewModel = LaptopListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.laptops, id: \.self) { laptop in
                NavigationLink(destination: DetailView(laptop: laptop)) {
                    ItemView(laptop: laptop)
                }
            }
            .navigationTitle("Laptop List")
        }
        .task {
            await viewModel.getLaptops()
        }
    }
}

#Preview {
    LaptopListView()
}


