//
//  CustomButton.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

struct CustomButton<Content: View>: View {

    private let title: String
    private let action: () -> Void
    private let configuration: (ButtonStyleConfiguration) -> Content

    init(
        _ title: String,
        action: @escaping () -> Void,
        @ViewBuilder configuration: @escaping (ButtonStyleConfiguration) -> Content
    ) {
        self.title = title
        self.action = action
        self.configuration = configuration
    }

    var body: some View {
        Button(title, action: action)
            .buttonStyle(Style(configuration))
    }
}

private extension CustomButton {

    struct Style: ButtonStyle {

        private let body: (Configuration) -> Content

        init(_ body: @escaping (Configuration) -> Content) {
            self.body = body
        }

        func makeBody(configuration: Configuration) -> some View {
            body(configuration)
        }
    }
}
