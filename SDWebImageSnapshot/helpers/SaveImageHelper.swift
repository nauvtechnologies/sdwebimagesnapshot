//
//  SaveImageHelper.swift
//  SDWebImageSnapshot
//
//  Created by Zack on 22/01/2025.
//

import SwiftUI

class SaveImageHelper: ObservableObject {
    
    func saveImageToPhotoAlbum(image: UIImage) {
        
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
    }
}
