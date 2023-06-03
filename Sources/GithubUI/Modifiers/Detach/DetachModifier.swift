//
//  File.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

extension View {

    @ViewBuilder
    public func detach<Detached: View>(_ flag: Bool, @ViewBuilder detached: @escaping (Self) -> Detached) -> some View {
        if flag {
            detached(self)
        } else {
            self
        }
    }
}
