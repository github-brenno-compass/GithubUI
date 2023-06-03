//
//  GithubButtonStyle.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public protocol GithubButtonStyle {

    typealias Configuration = GithubButtonConfiguration
    typealias Layout = GithubButtonLayout

    @MainActor
    func makeLayout(_ configuration: Self.Configuration) -> Self.Layout
}
