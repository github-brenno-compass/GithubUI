//
//  File.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public protocol GithubUserItemStyle {

    typealias Configuration = GithubUserItemConfiguration
    typealias Layout = GithubUserItemLayout

    @MainActor
    func makeLayout(_ configuration: Self.Configuration) -> Self.Layout
}
