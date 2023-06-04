//
//  GithubUserItemPrimaryStyle.swift
//
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public struct GithubUserItemPrimaryStyle: GithubUserItemStyle {

    public func makeLayout(_ configuration: Self.Configuration) -> Self.Layout {
        Layout()
            .titleFont(.body)
            .titleColor(.primary)
            .accessoryColor(.init(white: 0.75))
    }
}

extension GithubUserItemStyle where Self == GithubUserItemPrimaryStyle {

    public static var primary: GithubUserItemPrimaryStyle {
        .init()
    }
}
