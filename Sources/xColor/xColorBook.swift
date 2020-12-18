//
//  xColorBook.swift
//  xColor
//
//  Created by Zach Eriksen on 12/17/20.
//

import UIKit

@dynamicMemberLookup
public class xColorBook: Codable {
    public var pages: [String: xColorBookPage]
    
    public subscript(dynamicMember dynamicMember: String) -> xColorBookPage? {
        pages[dynamicMember]
    }
    
    public init(pages: [String: xColorBookPage] = [:]) {
        self.pages = pages
    }
}

extension xColorBook {
    public func xColor(
        named name: String,
        forPageNamed pageName: String,
        withDefaultColor defaultColor: xColor? = nil
    ) -> xColor {
        pages[pageName]?.xColor(named: name, withDefaultColor: defaultColor) ?? defaultColor!
    }
    
    public func color(
        named name: String,
        forPageNamed pageName: String,
        withDefaultColor defaultColor: UIColor? = nil
    ) -> UIColor {
        pages[pageName]?.color(named: name, withDefaultColor: defaultColor) ?? defaultColor!
    }
}
