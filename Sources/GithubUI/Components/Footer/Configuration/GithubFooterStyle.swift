//
//  GithubFooterStyle.swift
//
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public protocol GithubFooterStyle {

    typealias Configuration = GithubFooterConfiguration
    typealias Layout = GithubFooterLayout

    @MainActor
    func makeLayout(_ configuration: Self.Configuration) -> Self.Layout
}
