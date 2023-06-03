//
//  File.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubRepositoryItem<Tags: View>: View {

    @Environment(\.openURL) var openURL
    @Environment(\.githubRepositoryItemStyle) var style: GithubRepositoryItemStyle

    private let url: URL
    private let title: String
    private let description: String
    private let isPublic: Bool
    private let tags: Tags

    public init(
        url: URL,
        title: String,
        description: String,
        isPublic: Bool,
        @ViewBuilder tags: () -> Tags
    ) {
        self.url = url
        self.title = title
        self.description = description
        self.isPublic = isPublic
        self.tags = tags()
    }

    public var body: some View {
        let layout = style.makeLayout(.init())

        VStack(alignment: .leading, spacing: 16) {
            HStack(spacing: .zero) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack(spacing: 8) {
                        Image(systemName: "book.closed")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 16)
                            .foregroundColor(layout.descriptionColor)

                        Button {
                            openURL(url)
                        } label: {
                            Text(title)
                                .font(layout.titleFont)
                                .foregroundColor(layout.titleColor)
                                .lineLimit(1)
                        }

                        Text(isPublic ? L10n.RepositoryItem.public : L10n.RepositoryItem.private)
                            .font(layout.visibilityFont)
                            .foregroundColor(layout.visibilityColor)
                            .padding(.vertical, 1)
                            .padding(.horizontal, 4)
                            .overlay(
                                Capsule()
                                    .strokeBorder(layout.visibilityColor, lineWidth: 1)
                            )

                    }

                    if !description.isEmpty {
                        Text(description)
                            .font(layout.descriptionFont)
                            .foregroundColor(layout.descriptionColor)
                            .lineLimit(3)
                    }
                }
                .multilineTextAlignment(.leading)

                Spacer()
            }

            HStack(spacing: 16) {
                tags
            }
        }
        .padding(16)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(layout.descriptionColor, lineWidth: 1)
        )
    }
}

struct GithubRepositoryItem_Previews: PreviewProvider {

    static var previews: some View {
        GithubRepositoryItem(
            url: URL.temporaryDirectory,
            title: "request-dl/request-dl",
            description: """
                RequestDL is a Swift package designed to simplify the process \
                of performing network requests. It provides a set of tools, \
                including the RequestTask protocol, which supports different \
                types of requests, including DataTask, DownloadTask, and \
                UploadTask.
                """,
            isPublic: true,
            tags: {
                GithubTagView("Swift") {
                    Circle()
                        .fill(.orange)
                }

                GithubTagView("81") {
                    Image(systemName: "star")
                        .resizable()
                }
            }
        )
    }
}
