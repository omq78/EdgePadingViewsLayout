

//
//  Exte skj .swift
//  EdgePadingViewsLayout
//
//  Created by Omar Alqabbani on 7/26/19.
//  Copyright © 2019 OmarALqabbani. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    func fillSuperView(){
        anchor(top: superview?.topAnchor, left: superview?.leftAnchor, right: superview?.rightAnchor, bottom: superview?.bottomAnchor)
    }
    
    
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, right: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false

        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: padding.left).isActive = true
        }
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -padding.right).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
    func copySize(view: UIView) {
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
}
