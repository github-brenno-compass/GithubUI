//
//  GithubFooterPrimaryStyle.swift
//
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public struct GithubFooterPrimaryStyle: GithubFooterStyle {

    public func makeLayout(_ configuration: Self.Configuration) -> Self.Layout {
        Layout()
            .spacing(16)
            .padding(.init(
                top: 16,
                leading: 16,
                bottom: 16,
                trailing: 24
            ))
    }
}

extension GithubFooterStyle where Self == GithubFooterPrimaryStyle {

    public static var primary: GithubFooterPrimaryStyle {
        .init()
    }
}
