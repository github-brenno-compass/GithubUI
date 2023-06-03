//
//  GithubButton.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubButton: View {

    @Environment(\.githubButtonStyle) var style: GithubButtonStyle

    let title: String
    let action: () -> Void

    public init(_ title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    public var body: some View {
        CustomButton(title, action: action) {
            let layout = style.makeLayout(.init(isPressed: $0.isPressed))

            $0.label
                .foregroundColor(layout.foregroundColor)
                .font(layout.font)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(layout.backgroundColor)
                .cornerRadius(8)
        }
    }
}

struct GithubButton_Previews: PreviewProvider {

    static var previews: some View {
        GithubButton("Abc") {}
            .padding()
    }
}
