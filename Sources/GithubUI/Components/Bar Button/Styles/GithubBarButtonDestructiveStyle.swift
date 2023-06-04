//
//  GithubBarButtonDestructiveStyle.swift
//
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public struct GithubBarButtonDestructiveStyle: GithubBarButtonStyle {

    public func makeLayout(_ configuration: Self.Configuration) -> Self.Layout {
        Layout()
            .foregroundColor(.red.opacity(configuration.isPressed ? 0.8 : 1))
            .font(.system(.body))
    }
}

extension GithubBarButtonStyle where Self == GithubBarButtonDestructiveStyle {

    public static var destructive: GithubBarButtonDestructiveStyle {
        .init()
    }
}
