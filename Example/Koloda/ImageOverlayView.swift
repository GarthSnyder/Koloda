//
//  CustomOverlayView.swift
//  Koloda
//
//  Created by Eugene Andreyev on 7/27/15.
//  Copyright (c) 2015 CocoaPods. All rights reserved.
//

import UIKit
import Koloda

class ImageOverlayView: UIImageView, OverlayProtocol {
    
    let leftImageName: String
    let rightImageName: String

    init(_ left: String, _ right: String) {
        leftImageName = left
        rightImageName = right
        super.init(frame: CGRect.null) // Will be sized to fit card
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var overlayState: SwipeResultDirection? {
        get { return nil }
        set {
            switch newValue {
            case .left? :
                image = UIImage(named: leftImageName)
            case .right? :
                image = UIImage(named: rightImageName)
            default:
                image = nil
            }
        }
    }

}
