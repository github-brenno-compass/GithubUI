//
//  File.swift
//
//
//  Created by Brenno on 04/06/23.
//

import SwiftUI

extension View {

    public func eraseToAnyView() -> AnyView {
        AnyView(erasing: self)
    }
}
