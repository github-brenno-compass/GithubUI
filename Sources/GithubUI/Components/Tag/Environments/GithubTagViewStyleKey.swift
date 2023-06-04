//
//  GithubTagViewStyleKey.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

private struct GithubTagViewStyleKey: EnvironmentKey {
    static var defaultValue: GithubTagViewStyle = .primary
}

extension EnvironmentValues {

    var githubTagViewStyle: GithubTagViewStyle {
        get { self[GithubTagViewStyleKey.self] }
        set { self[GithubTagViewStyleKey.self] = newValue }
    }
}

extension View {

    public func githubTagViewStyle(_ style: GithubTagViewStyle) -> some View {
        environment(\.githubTagViewStyle, style)
    }
}
