//
//  GithubUserItem.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubUserItem<Avatar: View>: View {

    @Environment(\.githubUserItemStyle) var style

    private let username: String
    private let avatar: Avatar

    public init(
        _ username: String,
        @ViewBuilder avatar: () -> Avatar
    ) {
        self.username = username
        self.avatar = avatar()
    }

    public var body: some View {
        let layout = style.makeLayout(.init())

        HStack(spacing: 16) {
            avatar
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())

            HStack(spacing: .zero) {
                Text(username)
                    .font(layout.titleFont)
                    .foregroundColor(layout.titleColor)
                    .lineLimit(1)

                Spacer()
            }

            Image(systemName: "chevron.right")
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16)
                .foregroundColor(layout.accessoryColor)
        }
    }
}

struct GithubUserItem_Previews: PreviewProvider {

    static var previews: some View {
        List {
            GithubUserItem("brennobemoura") {
                Circle()
                    .fill(.secondary)
            }
            GithubUserItem("brenno-compass") {
                Circle()
                    .fill(.secondary)
            }
        }
    }
}
