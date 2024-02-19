//
//  DetailView.swift
//  LaptopList
//
//  Created by Elio Fernandez on 19/02/2024.
//

import Foundation
import SwiftUI

struct DetailView: View {
    
    let laptop: LaptopDataModel
    
    var body: some View {
        ScrollView {
            VStack() {
                AsyncImage(url: URL(string: laptop.imageURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                
                Text(laptop.description)
                    .font(.subheadline)
                    .padding()
            }
        }
        
    }
}

