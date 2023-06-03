//
//  GithubTagViewPrimaryStyle.swift
//
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public struct GithubTagViewPrimaryStyle: GithubTagViewStyle {

    public func makeLayout(_ configuration: Self.Configuration) -> Self.Layout {
        Layout()
            .font(.callout)
            .foregroundColor(.secondary)
    }
}

extension GithubTagViewStyle where Self == GithubTagViewPrimaryStyle {

    public static var primary: GithubTagViewPrimaryStyle {
        .init()
    }
}
