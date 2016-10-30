//
//  PItem.swift
//  todo_first_app
//
//  Created by David Aldorf on 30.10.16.
//  Copyright © 2016 David Aldorf. All rights reserved.
//

import Foundation

protocol PItem {
    var name: String {get set}
    var description: String {get set}
    var state: Bool {get set}
}
