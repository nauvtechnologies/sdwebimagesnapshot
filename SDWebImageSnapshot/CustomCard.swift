//
//  CustomCard.swift
//  SDWebImageSnapshot
//
//  Created by Zack on 22/01/2025.
//

import SwiftUI

struct CustomCard: View {
    
    let url = "https://picsum.photos/id/237/200/300"
    
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: url)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
        }
    }
    
}
