//
//  GithubScreen.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubScreen<Content: View>: View {

    @Environment(\.githubScreenStyle) var style: GithubScreenStyle

    private let title: String?
    private let content: Content

    public init(_ title: String? = nil, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

    public var body: some View {
        VStack(spacing: .zero) {
            content
        }
        .navigationTitle(Text(title ?? ""))
        #if !os(macOS) && !os(tvOS)
        .navigationBarTitleDisplayMode(.inline)
        #endif
        .navigationBarBackButtonHidden(true)
    }
}
