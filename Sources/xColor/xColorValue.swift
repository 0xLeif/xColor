//
//  xColorValue.swift
//  xColor
//
//  Created by Zach Eriksen on 12/17/20.
//

import CoreGraphics

public struct xColorValue: xColorRepresenting {
    public var red: CGFloat
    public var green: CGFloat
    public var blue: CGFloat
    public var alpha: CGFloat
    
    public init(
        red: CGFloat,
        green: CGFloat,
        blue: CGFloat,
        alpha: CGFloat
    ) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
}
