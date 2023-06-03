//
//  GithubEmptyView.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

@MainActor
public struct GithubEmptyView<Actions: View>: View {

    private let title: String
    private let description: String
    private let actions: Actions

    public init(
        title: String,
        description: String = "",
        @ViewBuilder actions: () -> Actions
    ) {
        self.title = title
        self.description = description
        self.actions = actions()
    }

    public init(
        title: String,
        description: String = ""
    ) where Actions == EmptyView {
        self.title = title
        self.description = description
        self.actions = EmptyView()
    }

    public var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                if !title.isEmpty {
                    Text(title)
                        .font(.title3)
                        .bold()
                }

                if !description.isEmpty {
                    Text(description)
                        .font(.body)
                }
            }
            .foregroundColor(.secondary)
            .multilineTextAlignment(.center)

            actions
        }
        .padding(24)
        .frame(maxWidth: 420)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
