//
//  GithubScreenStyle.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public protocol GithubScreenStyle {

    typealias Configuration = GithubScreenConfiguration
    typealias Layout = GithubScreenLayout

    @MainActor
    func makeLayout(_ configuration: Self.Configuration) -> Self.Layout
}
