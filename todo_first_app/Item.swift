//
//  Item.swift
//  todo_first_app
//
//  Created by David Aldorf on 30.10.16.
//  Copyright © 2016 David Aldorf. All rights reserved.
//

import Foundation

class Item: PItem {
    var name: String
    var description: String
    var state: Bool
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
        self.state = false
    }
    
    
}