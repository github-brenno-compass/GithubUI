//
//  File.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

@MainActor
public struct PageListView<Item: Identifiable, Content: View>: View {

    @Environment(\.isEnabled) var isEnabled

    let isLoading: Bool
    let actions: PageListAction.Set
    let source: PageListSource<Item>
    let content: (PageListFactory<Item>) -> Content
    let perform: (PageListActionPerform<Item>) -> Void
    let appear: (Item) -> Void

    public init(
        items: [Item],
        actions: PageListAction.Set = [],
        isLoading: Bool = false,
        @ViewBuilder content: @escaping (Item) -> Content,
        onAction perform: @escaping ((PageListActionPerform<Item>) -> Void) = { _ in },
        onAppear appear: @escaping ((Item) -> Void) = { _ in }
    ) {
        self.source = .static(items)
        self.actions = actions
        self.isLoading = isLoading
        self.content = { content($0.item) }
        self.perform = perform
        self.appear = appear
    }

    public init(
        items: [Binding<Item>],
        actions: PageListAction.Set = [],
        isLoading: Bool = false,
        @ViewBuilder content: @escaping (Binding<Item>) -> Content,
        onAction perform: @escaping ((PageListActionPerform<Item>) -> Void) = { _ in },
        onAppear appear: @escaping ((Item) -> Void) = { _ in }
    ) {
        self.source = .dynamic(items)
        self.actions = actions
        self.isLoading = isLoading
        self.content = { content($0.binding) }
        self.perform = perform
        self.appear = appear
    }

    public var body: some View {
        List {
            Section(actions.contains(.search) ? L10n.PageListView.results : "") {
                switch source {
                case .dynamic(let items):
                    ForEach(items) { binding in
                        cell(.dynamic(binding))
                    }
                case .static(let items):
                    ForEach(items) { item in
                        cell(.static(item))
                    }
                }
            }

            if isLoading {
                Section {
                    ProgressView()
                        .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

extension PageListView {

    @ViewBuilder
    func cell(_ factory: PageListFactory<Item>) -> some View {
        let item = factory.item

        HStack(spacing: 16) {
            self.content(factory)
                .layoutPriority(1)
        }
        .onAppear {
            appear(item)
        }
    }
}
