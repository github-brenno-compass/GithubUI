//
//  GithubBarButtonStyleKey.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

private struct GithubBarButtonStyleKey: EnvironmentKey {
    static var defaultValue: GithubBarButtonStyle = .primary
}

extension EnvironmentValues {

    var githubBarButtonStyle: GithubBarButtonStyle {
        get { self[GithubBarButtonStyleKey.self] }
        set { self[GithubBarButtonStyleKey.self] = newValue }
    }
}

extension View {

    public func githubBarButtonStyle(_ style: GithubBarButtonStyle) -> some View {
        environment(\.githubBarButtonStyle, style)
    }
}
