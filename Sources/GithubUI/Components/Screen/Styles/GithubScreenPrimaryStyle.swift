//
//  GithubScreenPrimaryStyle.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public struct GithubScreenPrimaryStyle: GithubScreenStyle {

    public func makeLayout(_ configuration: Self.Configuration) -> Self.Layout {
        Layout()
    }
}

extension GithubScreenStyle where Self == GithubScreenPrimaryStyle {

    public static var primary: GithubScreenPrimaryStyle {
        .init()
    }
}
