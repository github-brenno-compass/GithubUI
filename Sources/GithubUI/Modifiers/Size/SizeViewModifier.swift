//
//  SizeViewModifier.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

private struct SizeViewModifier: ViewModifier {

    @Binding var size: CGSize

    init(_ size: Binding<CGSize>) {
        self._size = size
    }

    func body(content: Content) -> some View {
        content
            .background(
                GeometryReader { proxy -> Color in
                    Task { @MainActor in
                        if proxy.size.width.isInfinite || proxy.size.height.isInfinite {
                            return
                        }

                        if proxy.size.width.isNormal && proxy.size.height.isNormal {
                            self.size = size
                        } else {
                            self.size = .zero
                        }
                    }

                    return Color.clear
                }
            )
    }
}

extension View {

    public func size(_ size: Binding<CGSize>) -> some View {
        modifier(SizeViewModifier(size))
    }
}
