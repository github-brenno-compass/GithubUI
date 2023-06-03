//
//  GithubUserItemStyleKey.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

private struct GithubUserItemStyleKey: EnvironmentKey {
    static var defaultValue: GithubUserItemStyle = .primary
}

extension EnvironmentValues {

    var githubUserItemStyle: GithubUserItemStyle {
        get { self[GithubUserItemStyleKey.self] }
        set { self[GithubUserItemStyleKey.self] = newValue }
    }
}

extension View {

    public func githubUserItemStyle(_ style: GithubUserItemStyle) -> some View {
        environment(\.githubUserItemStyle, style)
    }
}
