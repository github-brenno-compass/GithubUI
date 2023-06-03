//
//  GithubButtonLayout.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubButtonLayout: EditableObject {

    fileprivate(set) var backgroundColor: Color = .clear
    fileprivate(set) var foregroundColor: Color = .clear

    fileprivate(set) var font: Font = .system(size: 16)

    public init() {}
}

extension GithubButtonLayout {

    public func backgroundColor(_ backgroundColor: Color) -> Self {
        edit { $0.backgroundColor = backgroundColor }
    }

    public func foregroundColor(_ foregroundColor: Color) -> Self {
        edit { $0.foregroundColor = foregroundColor }
    }
}

extension GithubButtonLayout {

    public func font(_ font: Font) -> Self {
        edit { $0.font = font }
    }
}
