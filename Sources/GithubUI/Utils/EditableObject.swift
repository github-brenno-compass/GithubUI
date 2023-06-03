//
//  EditableObject.swift
//  
//
//  Created by Brenno on 03/06/23.
//

import Foundation

protocol EditableObject {}

extension EditableObject {

    func edit(_ edit: (inout Self) -> Void) -> Self {
        var mutableSelf = self
        edit(&mutableSelf)
        return mutableSelf
    }
}
