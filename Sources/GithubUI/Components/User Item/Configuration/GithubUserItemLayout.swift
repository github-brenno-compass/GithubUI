//
//  GithubUserItemLayout.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubUserItemLayout: EditableObject {

    fileprivate(set) var titleFont: Font = .body

    fileprivate(set) var titleColor: Color = .secondary
    fileprivate(set) var accessoryColor: Color = .secondary

    public init() {}
}

extension GithubUserItemLayout {

    public func titleFont(_ titleFont: Font) -> Self {
        edit { $0.titleFont = titleFont }
    }
}

extension GithubUserItemLayout {

    public func titleColor(_ titleColor: Color) -> Self {
        edit { $0.titleColor = titleColor }
    }

    public func accessoryColor(_ accessoryColor: Color) -> Self {
        edit { $0.accessoryColor = accessoryColor }
    }
}
