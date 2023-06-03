//
//  GithubRow.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public struct GithubRow<Label: View>: View {

    private let label: Label
    private let isDisclosureActive: Bool
    private let action: (() -> Void)?

    public init(
        _ label: String,
        isDisclosureActive: Bool = true,
        action: @escaping () -> Void
    ) where Label == Text {
        self.label = Text(label)
        self.isDisclosureActive = isDisclosureActive
        self.action = action
    }

    public init(
        _ label: String,
        isDisclosureActive: Bool = true
    ) where Label == Text {
        self.label = Text(label)
        self.isDisclosureActive = isDisclosureActive
        self.action = nil
    }

    public init(
        isDisclosureActive: Bool = true,
        @ViewBuilder label: () -> Label
    ) {
        self.label = label()
        self.isDisclosureActive = isDisclosureActive
        self.action = nil
    }

    public init(
        isDisclosureActive: Bool = true,
        action: @escaping () -> Void,
        @ViewBuilder label: () -> Label
    ) {
        self.label = label()
        self.isDisclosureActive = isDisclosureActive
        self.action = action
    }

    public var body: some View {
        if let action {
            Button(action: action) {
                buildLabel()
            }
        } else {
            buildLabel()
        }
    }
}

extension GithubRow {

    func buildLabel() -> some View {
        HStack(spacing: 16) {
            HStack(spacing: .zero) {
                label
                    .layoutPriority(1)
                Spacer(minLength: .zero)
            }

            if isDisclosureActive {
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .foregroundColor(iconColor)
                    .layoutPriority(1)
            }
        }
    }
}

extension GithubRow {

    var iconColor: Color {
        Color(.separator)
    }
}
