//
//  GithubCombined.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubCombined<Label: View, Content: View>: View {

    private let label: Label
    private let content: Content

    public init(
        @ViewBuilder label: () -> Label,
        @ViewBuilder content: () -> Content
    ) {
        self.label = label()
        self.content = content()
    }

    public init(
        _ label: String,
        @ViewBuilder content: () -> Content
    ) where Label == Text {
        self.label = Text(label)
        self.content = content()
    }

    public var body: some View {
        HStack(spacing: 16) {
            HStack(spacing: .zero) {
                label
                    .foregroundColor(.primary)
                Spacer()
            }

            content
                .foregroundColor(.secondary)
        }
    }
}
