//
//  xColorBookPage.swift
//  xColor
//
//  Created by Zach Eriksen on 12/17/20.
//

import UIKit

@dynamicMemberLookup
public class xColorBookPage: Codable {
    public var colors: [String: xColor]
    
    public subscript(dynamicMember dynamicMember: String) -> xColor? {
        colors[dynamicMember]
    }
    
    public init(colors: [String: xColor] = [:]) {
        self.colors = colors
    }
}

extension xColorBookPage {
    public func xColor(
        named name: String,
        withDefaultColor defaultColor: xColor? = nil
    ) -> xColor {
        colors[name] ?? defaultColor!
    }
    
    public func color(
        named name: String,
        withDefaultColor defaultColor: UIColor? = nil
    ) -> UIColor {
        colors[name]?.color ?? defaultColor!
    }
}
