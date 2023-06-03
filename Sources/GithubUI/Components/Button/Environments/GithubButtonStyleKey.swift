//
//  GithubButtonStyleKey.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

private struct GithubButtonStyleKey: EnvironmentKey {
    static var defaultValue: GithubButtonStyle = .primary
}

extension EnvironmentValues {

    var githubButtonStyle: GithubButtonStyle {
        get { self[GithubButtonStyleKey.self] }
        set { self[GithubButtonStyleKey.self] = newValue }
    }
}

extension View {

    public func githubButtonStyle(_ style: GithubButtonStyle) -> some View {
        environment(\.githubButtonStyle, style)
    }
}
