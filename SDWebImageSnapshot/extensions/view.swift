//
//  view.swift
//  SDWebImageSnapshot
//
//  Created by Zack on 22/01/2025.
//

import SwiftUI

extension View {
    
    func snapshot<T: View>(of view: T) -> UIImage {
        let controller = UIHostingController(rootView: view)
        let hostingView = controller.view
        
        let targetSize = hostingView?.intrinsicContentSize ?? .zero
        hostingView?.bounds = CGRect(origin: .zero, size: targetSize)
        hostingView?.backgroundColor = .clear
        
        let renderer = UIGraphicsImageRenderer(size: targetSize)
        
        return renderer.image { _ in
            hostingView?.drawHierarchy(in: hostingView!.bounds, afterScreenUpdates: true)
        }
    }
}
