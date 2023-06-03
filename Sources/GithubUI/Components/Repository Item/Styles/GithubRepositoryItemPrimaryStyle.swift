//
//  GithubRepositoryItemPrimaryStyle.swift
//
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public struct GithubRepositoryItemPrimaryStyle: GithubRepositoryItemStyle {

    public func makeLayout(_ configuration: Self.Configuration) -> Self.Layout {
        Layout()
            .titleFont(.body.bold())
            .descriptionFont(.callout)
            .visibilityFont(.caption.bold())
            .titleColor(.accentColor)
            .descriptionColor(.secondary)
            .visibilityColor(.secondary)
    }
}

extension GithubRepositoryItemStyle where Self == GithubRepositoryItemPrimaryStyle {

    public static var primary: GithubRepositoryItemPrimaryStyle {
        .init()
    }
}
