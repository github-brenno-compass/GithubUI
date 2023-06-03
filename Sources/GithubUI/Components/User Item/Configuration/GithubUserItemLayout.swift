//
//  GithubUserItemLayout.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubUserItemLayout: EditableObject {

    fileprivate(set) var titleFont: Font = .body
    fileprivate(set) var descriptionFont: Font = .callout
    fileprivate(set) var usernameFont: Font = .caption

    fileprivate(set) var titleColor: Color = .secondary
    fileprivate(set) var descriptionColor: Color = .secondary
    fileprivate(set) var usernameColor: Color = .secondary

    fileprivate(set) var accessoryColor: Color = .secondary
    
    public init() {}
}

extension GithubUserItemLayout {

    public func titleFont(_ titleFont: Font) -> Self {
        edit { $0.titleFont = titleFont }
    }

    public func descriptionFont(_ descriptionFont: Font) -> Self {
        edit { $0.descriptionFont = descriptionFont }
    }

    public func usernameFont(_ usernameFont: Font) -> Self {
        edit { $0.usernameFont = usernameFont }
    }
}

extension GithubUserItemLayout {

    public func titleColor(_ titleColor: Color) -> Self {
        edit { $0.titleColor = titleColor }
    }

    public func descriptionColor(_ descriptionColor: Color) -> Self {
        edit { $0.descriptionColor = descriptionColor }
    }

    public func usernameColor(_ usernameColor: Color) -> Self {
        edit { $0.usernameColor = usernameColor }
    }
}

extension GithubUserItemLayout {

    public func accessoryColor(_ accessoryColor: Color) -> Self {
        edit { $0.accessoryColor = accessoryColor }
    }
}
