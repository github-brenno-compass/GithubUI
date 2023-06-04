//
//  GithubFooter.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubFooter<Content: View>: View {

    @Environment(\.githubFooterStyle) var style: GithubFooterStyle

    private let content: Content

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        let layout = style.makeLayout(.init())

        VStack(spacing: layout.spacing) {
            content
        }
        .padding(layout.padding)
    }
}
