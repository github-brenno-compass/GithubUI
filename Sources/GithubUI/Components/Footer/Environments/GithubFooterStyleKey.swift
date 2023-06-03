//
//  GithubFooterStyleKey.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

private struct GithubFooterStyleKey: EnvironmentKey {
    static var defaultValue: GithubFooterStyle = .primary
}

extension EnvironmentValues {

    var githubFooterStyle: GithubFooterStyle {
        get { self[GithubFooterStyleKey.self] }
        set { self[GithubFooterStyleKey.self] = newValue }
    }
}

extension View {

    public func githubFooterStyle(_ style: GithubFooterStyle) -> some View {
        environment(\.githubFooterStyle, style)
    }
}
