//
//  GithubTagView.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubTagView<Content: View>: View {

    @Environment(\.githubTagViewStyle) var style

    private let content: Content
    private let title: String

    init(
        _ title: String,
        @ViewBuilder content: () -> Content
    ) {
        self.title = title
        self.content = content()
    }

    public var body: some View {
        let layout = style.makeLayout(.init())

        HStack(spacing: 8) {
            content
                .scaledToFit()
                .frame(idealWidth: 16)
                .frame(maxHeight: 16)

            Text(title)
                .font(layout.font)
        }
        .foregroundColor(layout.foregroundColor)
    }
}

struct GithubTagView_Previews: PreviewProvider {

    static var previews: some View {
        GithubTagView("Swift") {
            Image(systemName: "star")
                .resizable()
        }
    }
}
