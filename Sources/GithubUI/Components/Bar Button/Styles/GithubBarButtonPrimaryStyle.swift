//
//  GithubBarButtonPrimaryStyle.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public struct GithubBarButtonPrimaryStyle: GithubBarButtonStyle {

    public func makeLayout(_ configuration: Self.Configuration) -> Self.Layout {
        Layout()
            .foregroundColor(.accentColor.opacity(configuration.isPressed ? 0.8 : 1))
            .font(.system(.body))
    }
}

extension GithubBarButtonStyle where Self == GithubBarButtonPrimaryStyle {

    public static var primary: GithubBarButtonPrimaryStyle {
        .init()
    }
}
