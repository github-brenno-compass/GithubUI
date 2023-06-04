//
//  PageListSource.swift
//
//
//  Created by Brenno on 03/06/23.
//

import SwiftUI

enum PageListSource<Item> {
    case `static`([Item])
    case dynamic([Binding<Item>])
}
