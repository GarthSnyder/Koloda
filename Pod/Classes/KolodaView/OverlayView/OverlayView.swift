//
//  OverlayView.swift
//  Koloda
//
//  Created by Eugene Andreyev on 4/24/15.
//  Copyright (c) 2015 Eugene Andreyev. All rights reserved.
//

import UIKit

public typealias OverlayView = OverlayProtocol & UIView

public protocol OverlayProtocol {
    
    var overlayState: SwipeResultDirection? { get set }
    
    func update(progress: CGFloat)

}

public extension OverlayProtocol where Self: UIView {

    func update(progress: CGFloat) {
        alpha = progress
    }
    
}
