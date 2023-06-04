//
//  PageListAction.swift
//
//
//  Created by Brenno on 03/06/23.
//

import Foundation

public enum PageListAction: Int8, CaseIterable {
    case search
}

extension PageListAction {

    public struct Set: OptionSet {

        public var rawValue: Int8

        public init(rawValue: Int8) {
            self.rawValue = rawValue
        }

        public init(_ option: PageListAction) {
            self.init(rawValue: 1 << option.rawValue)
        }
    }
}

public extension PageListAction.Set {

    static let search = PageListAction.Set(.search)
}
