//
//  GithubRepositoryItemStyle.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public protocol GithubRepositoryItemStyle {

    typealias Configuration = GithubRepositoryItemConfiguration
    typealias Layout = GithubRepositoryItemLayout

    @MainActor
    func makeLayout(_ configuration: Self.Configuration) -> Self.Layout
}
