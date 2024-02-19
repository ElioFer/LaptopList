//
//  ItemView.swift
//  LaptopList
//
//  Created by Elio Fernandez on 19/02/2024.
//

import Foundation
import SwiftUI

struct ItemView: View {
    
    let laptop: LaptopDataModel
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: laptop.imageURL)) { image in
                image
                    .resizable()
                
            } placeholder: {
                Image(systemName: "photo.circle")
                    .resizable()
                
            }
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            
            
            VStack(alignment: .leading) {
                Text(laptop.title.capitalized)
                    .font(.headline)
                
                Text(laptop.description)
                    .font(.subheadline)
                    .lineLimit(3)
            }
        }
    }
}
