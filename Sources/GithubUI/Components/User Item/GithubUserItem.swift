//
//  GithubUserItem.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubUserItem<Avatar: View, Tags: View>: View {

    @Environment(\.githubUserItemStyle) var style

    private let title: String
    private let username: String
    private let description: String
    private let avatar: Avatar
    private let tags: Tags

    public init(
        title: String,
        username: String,
        description: String,
        @ViewBuilder avatar: () -> Avatar,
        @ViewBuilder tags: () -> Tags
    ) {
        self.title = title
        self.username = username
        self.description = description
        self.avatar = avatar()
        self.tags = tags()
    }

    public var body: some View {
        let layout = style.makeLayout(.init())

        HStack(spacing: 16) {
            avatar
                .scaledToFit()
                .frame(width: 64, height: 64)
                .clipShape(Circle())

            HStack(spacing: .zero) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack(spacing: 8) {
                        Text(title)
                            .font(layout.titleFont)
                            .foregroundColor(layout.titleColor)

                        Text(username)
                            .font(layout.usernameFont)
                            .foregroundColor(layout.usernameColor)
                    }

                    Text(description)
                        .font(layout.descriptionFont)
                        .foregroundColor(layout.descriptionColor)

                    HStack(spacing: 16) {
                        tags
                    }
                }
                .lineLimit(1)

                Spacer()
            }

            Image(systemName: "chevron.right")
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16)
                .foregroundColor(layout.accessoryColor)
        }
        .padding(16)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(layout.descriptionColor, lineWidth: 1)
        )
    }
}

struct GithubUserItem_Previews: PreviewProvider {

    static var previews: some View {
        GithubUserItem(
            title: "Brenno",
            username: "brennobemoura",
            description: "Swift developer with a passion for technology and a focus on declarative programming, experience in challenging projects and multidisciplinary teams.",
            avatar: {
                Circle()
                    .fill(.secondary)
            },
            tags: {
                GithubTagView("Compass UOL") {
                    Image(systemName: "building.2")
                }

                GithubTagView("Brazil") {
                    Image(systemName: "mappin.and.ellipse")
                }
            }
        )
    }
}
