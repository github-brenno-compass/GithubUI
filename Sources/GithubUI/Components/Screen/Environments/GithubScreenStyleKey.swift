//
//  GithubScreenStyleKey.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

private struct GithubScreenStyleKey: EnvironmentKey {
    static var defaultValue: GithubScreenStyle = .primary
}

extension EnvironmentValues {

    var githubScreenStyle: GithubScreenStyle {
        get { self[GithubScreenStyleKey.self] }
        set { self[GithubScreenStyleKey.self] = newValue }
    }
}

extension View {

    public func githubScreenStyle(_ style: GithubScreenStyle) -> some View {
        environment(\.githubScreenStyle, style)
    }
}
