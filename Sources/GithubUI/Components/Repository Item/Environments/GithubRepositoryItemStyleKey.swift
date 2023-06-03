//
//  GithubRepositoryItemStyleKey.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

private struct GithubRepositoryItemStyleKey: EnvironmentKey {
    static var defaultValue: GithubRepositoryItemStyle = .primary
}

extension EnvironmentValues {

    var githubRepositoryItemStyle: GithubRepositoryItemStyle {
        get { self[GithubRepositoryItemStyleKey.self] }
        set { self[GithubRepositoryItemStyleKey.self] = newValue }
    }
}

extension View {

    public func githubRepositoryItemStyle(_ style: GithubRepositoryItemStyle) -> some View {
        environment(\.githubRepositoryItemStyle, style)
    }
}
