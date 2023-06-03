//
//  GithubBarButtonStyle.swift
//
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public protocol GithubBarButtonStyle {

    typealias Configuration = GithubBarButtonConfiguration
    typealias Layout = GithubBarButtonLayout

    @MainActor
    func makeLayout(_ configuration: Self.Configuration) -> Self.Layout
}
