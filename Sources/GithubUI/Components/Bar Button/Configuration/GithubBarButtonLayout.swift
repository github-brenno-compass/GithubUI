//
//  GithubBarButtonLayout.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubBarButtonLayout: EditableObject {

    fileprivate(set) var foregroundColor: Color = .clear
    fileprivate(set) var font: Font = .system(size: 16)

    public init() {}
}

extension GithubBarButtonLayout {

    public func foregroundColor(_ foregroundColor: Color) -> Self {
        edit { $0.foregroundColor = foregroundColor }
    }
}

extension GithubBarButtonLayout {

    public func font(_ font: Font) -> Self {
        edit { $0.font = font }
    }
}
