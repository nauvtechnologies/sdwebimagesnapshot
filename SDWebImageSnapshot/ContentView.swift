//
//  ContentView.swift
//  SDWebImageSnapshot
//
//  Created by Zack on 22/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var saveImageHelper = SaveImageHelper()
    
    var body: some View {
        ZStack {
            GeometryReader {
                let width = $0.size.width
                let height = $0.size.height
                
                getCard(width: width, height: height)
                
                Button(
                    action: {
                        let image: UIImage = snapshot(of: getCard(width: width, height: height))
                        
                        saveImageHelper.saveImageToPhotoAlbum(image: image)
                    },
                    label: {
                        getSaveButton()
                    }
                )
                .aspectRatio(4.0, contentMode: .fit)
                .frame(width: width * 0.53)
                .position(x: width * 0.5, y: height * 0.95)
            }
        }
        .padding()
    }
    
    private func getCard(width: CGFloat, height: CGFloat) -> some View {
        ZStack {
            VStack {
                Color.brown
                Color.black.opacity(0.3)
                Color.brown.opacity(0.3)
            }
            
            Rectangle()
                .fill(Color.white)
                .aspectRatio(2/3, contentMode: .fit)
                .frame(width: width * 0.9)
                .position(x: width * 0.5, y: height * 0.5)
            
            CustomCard()
                .aspectRatio(2/3, contentMode: .fit)
                .frame(width: width * 0.8)
                .position(x: width * 0.5, y: height * 0.5)
        }
        .frame(width: width, height: height)
    }
    
    private func getSaveButton() -> some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .cornerRadius(58)
            
            Text("SAVE IMAGE")
                .foregroundColor(Color.white)
        }
    }
}

#Preview {
    ContentView()
}
