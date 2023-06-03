//
//  GithubRepositoryItemLayout.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubRepositoryItemLayout: EditableObject {

    fileprivate(set) var titleFont: Font = .body
    fileprivate(set) var descriptionFont: Font = .callout
    fileprivate(set) var visibilityFont: Font = .caption

    fileprivate(set) var titleColor: Color = .primary
    fileprivate(set) var descriptionColor: Color = .secondary
    fileprivate(set) var visibilityColor: Color = .secondary

    public init() {}
}

extension GithubRepositoryItemLayout {

    public func titleFont(_ titleFont: Font) -> Self {
        edit { $0.titleFont = titleFont }
    }

    public func descriptionFont(_ descriptionFont: Font) -> Self {
        edit { $0.descriptionFont = descriptionFont }
    }

    public func visibilityFont(_ visibilityFont: Font) -> Self {
        edit { $0.visibilityFont = visibilityFont }
    }
}

extension GithubRepositoryItemLayout {

    public func titleColor(_ titleColor: Color) -> Self {
        edit { $0.titleColor = titleColor }
    }

    public func descriptionColor(_ descriptionColor: Color) -> Self {
        edit { $0.descriptionColor = descriptionColor }
    }

    public func visibilityColor(_ visibilityColor: Color) -> Self {
        edit { $0.visibilityColor = visibilityColor }
    }
}
