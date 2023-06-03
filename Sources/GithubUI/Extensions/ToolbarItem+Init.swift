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
            return .navigationBarLeading
        case .center:
            return .navigation
        case .trailing:
            return .navigationBarTrailing
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
