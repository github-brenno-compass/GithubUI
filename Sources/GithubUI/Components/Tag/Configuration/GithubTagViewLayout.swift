//
//  File.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubTagViewLayout: EditableObject {

    fileprivate(set) var font: Font = .callout
    fileprivate(set) var foregroundColor: Color = .secondary

    public init() {}
}

extension GithubTagViewLayout {

    public func font(_ font: Font) -> Self {
        edit { $0.font = font }
    }

    public func foregroundColor(_ foregroundColor: Color) -> Self {
        edit { $0.foregroundColor = foregroundColor }
    }
}
