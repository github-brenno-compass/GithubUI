//
//  GithubTagViewStyle.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public protocol GithubTagViewStyle {

    typealias Configuration = GithubTagViewConfiguration
    typealias Layout = GithubTagViewLayout

    @MainActor
    func makeLayout(_ configuration: Self.Configuration) -> Self.Layout
}
