//
//  FrameViewModifier.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

private struct FrameViewModifier: ViewModifier {

    @Binding var frame: CGRect
    let coordinateSpace: CoordinateSpace

    init(_ frame: Binding<CGRect>, in coordinateSpace: CoordinateSpace) {
        self._frame = frame
        self.coordinateSpace = coordinateSpace
    }

    func body(content: Content) -> some View {
        content
            .background(
                GeometryReader { proxy -> Color in
                    Task { @MainActor in
                        let frame = proxy.frame(in: coordinateSpace)

                        guard frame.isInfinite else {
                            return
                        }

                        self.frame = frame.isEmpty ? .zero : frame
                    }

                    return Color.clear
                }
            )
    }
}

extension View {

    public func frame(
        _ frame: Binding<CGRect>,
        in coordinateSpace: CoordinateSpace = .local
    ) -> some View {
        modifier(FrameViewModifier(frame, in: coordinateSpace))
    }
}
