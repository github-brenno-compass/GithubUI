//
//  File.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

public enum ToolbarItemNavigationPlacement {
    case leading
    case center
    case trailing
}

extension ToolbarItemNavigationPlacement {

    var placement: ToolbarItemPlacement {
        switch self {
        case .leading:
            #if os(macOS)
            return .primaryAction
            #elseif os(watchOS)
            return .cancellationAction
            #else
            return .navigationBarLeading
            #endif
        case .center:
            #if os(watchOS)
            return .automatic
            #else
            return .navigation
            #endif
        case .trailing:
            #if os(macOS)
            return .secondaryAction
            #elseif os(watchOS)
            return .confirmationAction
            #else
            return .navigationBarTrailing
            #endif
        }
    }
}

extension ToolbarItem where ID == () {

    public init(
        _ navigationPlacement: ToolbarItemNavigationPlacement,
        @ViewBuilder content: () -> Content
    ) {
        self.init(placement: navigationPlacement.placement, content: content)
    }
}
