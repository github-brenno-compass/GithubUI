//
//  PageListFactory.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

enum PageListFactory<Item> {

    case `static`(Item)
    case dynamic(Binding<Item>)

    var item: Item {
        switch self {
        case .dynamic(let binding):
            return binding.wrappedValue
        case .static(let item):
            return item
        }
    }

    var binding: Binding<Item> {
        switch self {
        case .dynamic(let binding):
            return binding
        case .static(let item):
            return .constant(item)
        }
    }
}
