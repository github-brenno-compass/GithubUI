//
//  GithubFooterLayout.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubFooterLayout: EditableObject {

    fileprivate(set) var padding: EdgeInsets = .init()
    fileprivate(set) var spacing: CGFloat = .zero

    public init() {}
}

extension GithubFooterLayout {

    public func padding(_ padding: EdgeInsets) -> Self {
        edit { $0.padding = padding }
    }

    public func spacing(_ spacing: CGFloat) -> Self {
        edit { $0.spacing = spacing }
    }
}
