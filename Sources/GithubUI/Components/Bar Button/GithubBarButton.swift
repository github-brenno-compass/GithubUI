//
//  GithubBarButton.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubBarButton: View {

    @Environment(\.githubBarButtonStyle) var style: GithubBarButtonStyle

    private let image: Image?
    private let label: String?
    private let action: () -> Void

    private init(
        image: Image?,
        label: String?,
        action: @escaping () -> Void
    ) {
        self.image = image
        self.label = label
        self.action = action
    }

    public init(_ image: Image, action: @escaping () -> Void) {
        self.init(
            image: image,
            label: nil,
            action: action
        )
    }

    public init(_ label: String, action: @escaping () -> Void) {
        self.init(
            image: nil,
            label: label,
            action: action
        )
    }

    public var body: some View {
        CustomButton("", action: action) {
            let layout = style.makeLayout(.init(isPressed: $0.isPressed))

            ZStack {
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)

                label.map {
                    Text($0)
                        .font(layout.font)
                }
            }
            .foregroundColor(layout.foregroundColor)
            .lineLimit(1)
            .frame(minWidth: 24, minHeight: 24)
        }
        .frame(height: 32)
    }
}

public extension GithubBarButton {

    static func back(action: @escaping () -> Void) -> Self {
        .init(Image(systemName: "chevron.left"), action: action)
    }

    static func close(action: @escaping () -> Void) -> Self {
        .init(L10n.BarButton.close, action: action)
    }
}

struct GithubBarButton_Previews: PreviewProvider {

    static var previews: some View {
        GithubBarButton(
            Image(systemName: "arrow.left"),
            action: {}
        )

        GithubBarButton(
            "Salvar",
            action: {}
        )
    }
}
