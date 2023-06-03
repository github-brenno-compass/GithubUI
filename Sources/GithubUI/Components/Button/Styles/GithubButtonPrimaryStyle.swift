//
//  GithubButtonPrimaryStyle.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public struct GithubButtonPrimaryStyle: GithubButtonStyle {

    public func makeLayout(_ configuration: Self.Configuration) -> Self.Layout {
        Layout()
            .backgroundColor(.accentColor.opacity(configuration.isPressed ? 0.8 : 1))
            .foregroundColor(.white)
            .font(.system(.body))
    }
}

extension GithubButtonStyle where Self == GithubButtonPrimaryStyle {

    public static var primary: GithubButtonPrimaryStyle {
        .init()
    }
}
