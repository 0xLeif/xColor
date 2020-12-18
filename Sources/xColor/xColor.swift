//
//  xColor.swift
//  xColor
//
//  Created by Zach Eriksen on 12/17/20.
//

import UIKit

public protocol xColorRepresenting: Codable {
    var red: CGFloat { get set }
    var green: CGFloat { get set }
    var blue: CGFloat { get set }
    var alpha: CGFloat { get set }
}

public protocol UIColorProviding {
    var color: UIColor { get }
}

public struct xColor: xColorRepresenting {
    public var red: CGFloat
    public var green: CGFloat
    public var blue: CGFloat
    public var alpha: CGFloat
    
    public var darkColor: xColorValue? = nil
    public var lightColor: xColorValue? = nil
}

extension xColor: UIColorProviding {
    public var color: UIColor {
        guard #available(iOS 13, *) else {
            return UIColor(red: red,
                           green: green,
                           blue: blue,
                           alpha: alpha)
        }
        
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if let dark = darkColor,
               traitCollection.userInterfaceStyle == .dark {
                return UIColor(red: dark.red,
                               green: dark.green,
                               blue: dark.blue,
                               alpha: dark.alpha)
            } else if let light = lightColor {
                return UIColor(red: light.red,
                               green: light.green,
                               blue: light.blue,
                               alpha: light.alpha)
            } else {
                return UIColor(red: red,
                               green: green,
                               blue: blue,
                               alpha: alpha)
            }
        }
    }
}
